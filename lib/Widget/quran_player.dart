import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Utils/surah_list.dart';

class Quran_Player extends StatefulWidget {
  const Quran_Player({Key? key, this.loopMode, this.toggleLoop})
      : super(key: key);
  final LoopMode? loopMode;
  final Function()? toggleLoop;

  @override
  _Quran_PlayerState createState() => _Quran_PlayerState();
}

class _Quran_PlayerState extends State<Quran_Player> {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  late bool isAudioPlayerReady;
  String currentTitle = "";
  double currentValue = 0.0;
  int currentIndex = 0;
  Color highlightColor = Color(0xff35738a);
  bool isSuffled = false;

  Icon loopIcon(BuildContext context) {
    if (audioPlayer.currentLoopMode == LoopMode.single) {
      return const Icon(
        Icons.repeat_on_sharp,
        color: Colors.grey,
        size: 24,
      );
    } else if (audioPlayer.currentLoopMode == LoopMode.playlist) {
      return const Icon(
        Icons.repeat_on,
        size: 24,
        color: Colors.grey,
      );
    } else {
      return const Icon(
        Icons.repeat,
        size: 24,
        color: Colors.white,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    setupPlaylist();
    isAudioPlayerReady = false;
    isSuffled = audioPlayer.shuffle;
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  void setupPlaylist() async {
    audioPlayer
        .open(
      Playlist(audios: SurahList),
      showNotification: true,
      autoStart: false,
    )
        .then((value) {
      setState(() {
        isAudioPlayerReady = true;
        updateChange(0);
      });
    });
    audioPlayer.current.listen((positionValue) {
      updateChange(positionValue!.index);
    });
  }

  playMusic() async {
    await audioPlayer.play();
  }

  pauseMusic() async {
    await audioPlayer.pause();
  }

  skipPrevious() async {
    await audioPlayer.previous();
    final Playing? playing = audioPlayer.current.value;
    updateChange(playing!.index);
  }

  skipNext() async {
    await audioPlayer.next();
    final Playing? playing = audioPlayer.current.value;
    updateChange(playing!.index);
  }

  shuffle() async {
    await audioPlayer.shuffle;
    final Playing? playing = audioPlayer.current.value;
    updateChange(playing!.index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: audioPlayer.builderRealtimePlayingInfos(
          builder: (context, realtimePlayingInfos) {
        if (realtimePlayingInfos != null) {
          return Container(
            height: 140,
            color: kPrimarycolor,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "${realtimePlayingInfos.currentPosition.inMinutes}:${realtimePlayingInfos.currentPosition.inSeconds.remainder(60)}",
                            style: Textt2.textStyle(kSecondaryColor, 12),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(flex: 7, child: slider(realtimePlayingInfos)),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Text(
                            "${realtimePlayingInfos.duration.inMinutes}:${realtimePlayingInfos.duration.inSeconds.remainder(60)}",
                            style: Textt2.textStyle(kSecondaryColor, 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    currentTitle,
                    style: Textt2.textStyle(kSecondaryColor, 15),
                  ),
                  isAudioPlayerReady ? playButton() : SizedBox(),
                ],
              ),
            ),
          );
        } else {
          return Column();
        }
      }),
      body: audioPlayer.builderIsPlaying(builder: (context, isPlaying) {
        return Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "assets/images/quran.jpg",
              ),
              fit: BoxFit.fill,
            )),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: SurahList.length,
              itemBuilder: (context, index) {
                return playlistItem(index);
              }),
        ]);
      }),
    );
  }

  Widget playButton() {
    return Container(
      child: audioPlayer.builderIsPlaying(builder: (context, isPlaying) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                color: kSecondaryColor,
                iconSize: 40,
                icon: Icon(Icons.skip_previous_rounded),
                onPressed: () => skipPrevious()),
            IconButton(
              padding: const EdgeInsets.all(0),
              splashRadius: 24,
              onPressed: () {
                setState(() {
                  isSuffled = !isSuffled;
                });
                audioPlayer.toggleShuffle();
              },
              icon: isSuffled
                  ? const Icon(Icons.shuffle_on_sharp, color: Colors.grey)
                  : const Icon(Icons.shuffle, color: Colors.white),
            ),
            IconButton(
                iconSize: 40,
                color: kSecondaryColor,
                icon: Icon(
                    isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded),
                onPressed: () => isPlaying ? pauseMusic() : playMusic()),
            IconButton(
              padding: const EdgeInsets.all(0),
              splashRadius: 24,
              onPressed: () {
                updateToggle();
              },
              icon: loopIcon(context),
            ),
            IconButton(
                iconSize: 40,
                color: kSecondaryColor,
                icon: Icon(Icons.skip_next_rounded),
                onPressed: () => skipNext())
          ],
        );
      }),
    );
  }

  Widget playlistItem(int index) {
    return InkWell(
      onTap: () {
        audioPlayer.playlistPlayAtIndex(index);
        updateChange(index);
      },
      splashColor: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${index + 1}',
                    style: Textt1.textStyle(kSecondaryColor, 15)),
                SizedBox(width: 0.04),
                Text(SurahList[index].metas.title ?? '',
                    style: Textt2.textStyle(kSecondaryColor, 15)),
                SizedBox(width: 0.04),
                Text(SurahList[index].metas.artist ?? '',
                    style: Textt1.textStyle(kSecondaryColor, 15)),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            color: kSecondaryColor,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  Widget slider(RealtimePlayingInfos realtimePlayingInfos) {
    return SliderTheme(
        data: SliderThemeData(
            thumbColor: Colors.blue,
            trackShape: CustomTrackShape(),
            activeTrackColor: highlightColor,
            inactiveTrackColor: Colors.grey[800],
            overlayColor: Colors.transparent),
        child: Slider.adaptive(
            value: realtimePlayingInfos.currentPosition.inSeconds.toDouble(),
            max: realtimePlayingInfos.duration.inSeconds.toDouble(),
            min: 0,
            onChanged: (value) {
              currentValue = value;
              audioPlayer.seek(Duration(seconds: currentValue.round()));
            }));
  }

  void updateChange(int index) {
    setState(() {
      currentIndex = index;
      currentTitle = SurahList[index].metas.title ?? '';
      print("current index: $currentIndex ");
    });
  }

  void updateToggle() {
    if (audioPlayer.currentLoopMode == LoopMode.none) {
      audioPlayer.setLoopMode(LoopMode.single);
      // } else if (audioPlayer.currentLoopMode == LoopMode.playlist) {
      //   audioPlayer.setLoopMode(LoopMode.single);
    } else {
      audioPlayer.setLoopMode(LoopMode.none);
    }
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  /// Removes side padding of slider
  /// Credit goes to @clocksmith, https://github.com/flutter/flutter/issues/37057
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double? trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
