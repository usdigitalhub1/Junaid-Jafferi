import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:url_launcher/url_launcher.dart';

enum SocialMedia {
  facebook,
  whatsapp,
  twitter,
  instagram,
  youtube,
  pinterest,
  linkedin
}

class AboutUS extends StatefulWidget {
  const AboutUS({Key? key}) : super(key: key);
  static String id = 'about_us';

  @override
  _AboutUSState createState() => _AboutUSState();
}

class _AboutUSState extends State<AboutUS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  height: 220,
                  child: Image.asset('assets/images/istikhara.jpg',
                      fit: BoxFit.fill)),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 35),
                child: Text(
                    '\"Anyone can be a millionaire, but'
                    '                 to  become a billionaire you need'
                    '                 an astrologer.\"',
                    style: Textt1.textStyle(kSecondaryColor, 16),
                    textAlign: TextAlign.center),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(right: 40),
                height: 120,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              FontAwesomeIcons.clock,
                              color: kSecondaryColor,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Icon(
                              Icons.mail,
                              color: kSecondaryColor,
                            ),
                            Icon(
                              Icons.location_on,
                              color: kSecondaryColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Monday-Saturday 06:00 am -02:00 am',
                                  style: Textt1.textStyle(kSecondaryColor, 14),
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  'Sunday 08:00 am -02:00 am',
                                  style: Textt1.textStyle(kSecondaryColor, 14),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                            Text(
                              'info@juniadjafferi.com',
                              style: Textt1.textStyle(kSecondaryColor, 14),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              'Lahore, Pakistan',
                              style: Textt1.textStyle(kSecondaryColor, 14),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Now',
                      style: Textt2.textStyle(kSecondaryColor, 18),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      '     0300 0677791',
                      style: Textt2.textStyle(kSecondaryColor, 18),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          share(SocialMedia.facebook);
                        },
                        icon: Icon(FontAwesomeIcons.facebookSquare),
                        color: Color(0xff0075fc),
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          share(SocialMedia.whatsapp);
                        },
                        icon: Icon(FontAwesomeIcons.whatsapp),
                        color: Colors.green,
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          share(SocialMedia.twitter);
                        },
                        icon: Icon(FontAwesomeIcons.twitter),
                        color: Color(0xff1DA1F2),
                        iconSize: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          share(SocialMedia.instagram);
                        },
                        icon: Icon(FontAwesomeIcons.instagram),
                        color: Color(0xfffb3958),
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          _launchYoutube();
                        },
                        icon: Icon(FontAwesomeIcons.youtube),
                        color: Color(0xffc4302b),
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          share(SocialMedia.pinterest);
                        },
                        icon: Icon(FontAwesomeIcons.pinterestP),
                        color: Color(0xffc8232c),
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          share(SocialMedia.linkedin);
                        },
                        icon: Icon(FontAwesomeIcons.linkedin),
                        color: Color(0xff0e76a8),
                        iconSize: 30,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future share(SocialMedia socialPlatform) async {
    final urls = {
      SocialMedia.facebook:
          'fb://facewebmodal/f?href=https://www.facebook.com/junaidjafferi04/',
      SocialMedia.twitter: 'https://twitter.com/JJaferri',
      SocialMedia.instagram: 'https://www.instagram.com/junaidjafferi04/',
      SocialMedia.pinterest: 'https://www.pinterest.com/junaidjafferi/_saved/',
      SocialMedia.linkedin:
          'https://www.linkedin.com/in/junaid-jafferi-b5a7391b3',
      SocialMedia.whatsapp: 'https://wa.me/${00923000677791}?',
    };
    final url = urls[socialPlatform]!;

    await launch(url);
  }

  _launchYoutube() async {
    if (Platform.isIOS) {
      if (await canLaunch(
          'https://www.youtube.com/channel/UCn6efnvf1LMmTYi_k3yiowQ')) {
        await launch('https://www.youtube.com/channel/UCn6efnvf1LMmTYi_k3yiowQ',
            forceSafariVC: false);
      } else {
        if (await canLaunch(
            'https://www.youtube.com/channel/UCn6efnvf1LMmTYi_k3yiowQ')) {
          await launch(
              'https://www.youtube.com/channel/UCn6efnvf1LMmTYi_k3yiowQ');
        } else {
          throw 'Could not launch https://www.youtube.com/channel/UCn6efnvf1LMmTYi_k3yiowQ';
        }
      }
    } else {
      const url = 'https://www.youtube.com/channel/UCn6efnvf1LMmTYi_k3yiowQ';
      {
        await launch(url);
      }
    }
  }
}
