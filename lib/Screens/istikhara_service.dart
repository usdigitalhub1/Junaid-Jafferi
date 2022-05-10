import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junaid_jafferi/Drawer/naviigation_drawer.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Screens/istikhara_tab.dart';
import 'package:junaid_jafferi/Widget/youtube_Player4.dart';

class Istikhara_Service extends StatefulWidget {
  const Istikhara_Service({Key? key}) : super(key: key);
  static String id = 'istikhara_service';

  @override
  _Istikhara_ServiceState createState() => _Istikhara_ServiceState();
}

class _Istikhara_ServiceState extends State<Istikhara_Service> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Istikhara Service',
          style: Textt1.textStyle(Colors.white, 18),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Contact US  ',
            style: Textt2.textStyle(kSecondaryColor, 15),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Istikhara_Tab()));
            },
            child: Icon(
              FontAwesomeIcons.whatsapp,
              color: Colors.green,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                height: 240,
                child: YoutubePlayer4(),
              ),
              SizedBox(height: 60,),
              Container(
                height: 380,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  border: Border.all(color: kPrimaryFontColor, width: 2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'When you do istikhara, Allah Shows you some signs of your future.',
                          style: Textt1.textStyle(kPrimaryFontColor, 15),
                        ),
                        Text(
                          'Istikhara is mostly practiced when there\'s something essential thing to do.',
                          style: Textt1.textStyle(kPrimaryFontColor, 15),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'For example:',
                          style: Textt1.textStyle(kPrimaryFontColor, 15),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                  child: Text(
                                '• Online Istikhara for Marriage',
                                style: Textt2.textStyle(kPrimaryFontColor, 15),
                              )),
                              Center(
                                  child: Text(
                                '• Manpasand Shadi Istikhara    ',
                                style: Textt2.textStyle(kPrimaryFontColor, 15),
                              )),
                              Center(
                                  child: Text(
                                '• Love marriage                          ',
                                style: Textt2.textStyle(kPrimaryFontColor, 15),
                              )),
                              Center(
                                  child: Text(
                                '      • Istikhara for starting a business',
                                style: Textt2.textStyle(kPrimaryFontColor, 15),
                              )),
                              Center(
                                  child: Text(
                                '    • Istikhara for buving a property',
                                style: Textt2.textStyle(kPrimaryFontColor, 15),
                              )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Its performed to save yourself from significant loss.',
                          style: Textt1.textStyle(kPrimaryFontColor, 15),
                        ),
                        Text(
                          'Junaid Jafferi is an internationally renowned scholar providing the best Online Istakhara Service.',
                          style: Textt1.textStyle(kPrimaryFontColor, 15),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'But there\'s one problem most people don\'t know how to do istikhara, or they don\'t know dua istikhara.',
                          style: Textt1.textStyle(kPrimaryFontColor, 15),
                        ),
                        Text(
                          'That\'s why we are here to help you. We perform istikhara for you to save you from '
                          'significant loss. Rohani Scholar Junaid Jafferi Famous Astrologer, can help you with this istikhara Problem.',
                          style: Textt1.textStyle(kPrimaryFontColor, 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
