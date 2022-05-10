import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junaid_jafferi/Res/junaid_icons.dart';
import 'package:junaid_jafferi/Screens/about_us.dart';
import 'package:junaid_jafferi/Screens/asma_ul_husna.dart';
import 'package:junaid_jafferi/Screens/horscope.dart';
import 'package:junaid_jafferi/Screens/istikhara_service.dart';
import 'package:junaid_jafferi/Screens/lucky_stone.dart';
import 'package:junaid_jafferi/Screens/quran_pak.dart';
import 'package:junaid_jafferi/Screens/rohani_ilag.dart';
import 'package:junaid_jafferi/Screens/spirtual_treatment.dart';
import 'package:junaid_jafferi/Widget/carddesign.dart';
import 'package:permission_handler/permission_handler.dart';

class Dashboard extends StatefulWidget {
  static String id = 'dashboard';

  const Dashboard ({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State {
  final GlobalKey _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: SingleChildScrollView(
          child: Stack(
            children: [
             SvgPicture.asset('assets/icons/bg.svg',fit: BoxFit.cover,height: 900,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 130,),
                  Container(
                    height: 180,
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quran_Pak()),
                              );

                            },
                            child: CarddDesign(
                              icn: Junaid.quran,
                              textt: 'Quran Pak',
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AsmaulHusna()),
                              );

                            },
                            child: CarddDesign(
                              icn: Junaid.asma,
                              textt: "Asma-ul-Husna",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Horscope())
                              );

                            },
                            child: CarddDesign(
                              icn: FontAwesomeIcons.star,
                              textt: 'Horscope',
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  LuckyStone())
                              );
                            },
                            child: CarddDesign(
                              icn: FontAwesomeIcons.gem,
                              textt: "Lucky Stone",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Spirtual_Treatment())
                              );

                            },
                            child: CarddDesign(
                              icn: Junaid.spirtual,
                              textt: 'Spiritual Treatment',
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RohainIlag())
                              );

                            },
                            child: CarddDesign(
                              icn: Junaid.tasbih,
                              textt: "Rohani Ilag",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 180,
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 30),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Istikhara_Service())
                              );

                            },
                            child: CarddDesign(
                              icn: FontAwesomeIcons.prayingHands,
                              textt: 'Istikhara Service',
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AboutUS())
                              );

                            },
                            child: CarddDesign(
                              icn: FontAwesomeIcons.infoCircle,
                              textt: "About Us",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Future _saveContact() async {
  //   Contact contact = Contact();
  //   contact.familyName = 'FreeZone';
  //   contact.phones = [Item(label: "mobile", value: '01752591591')];
  //   contact.emails = [Item(label: "work", value: 'info@34.71.214.132')];
  //   if (await Permission.contacts.request().isGranted) {
  //     await ContactsService.openDeviceContactPicker();
  //     print("Contact added successfully");
  //     return contact;
  //   }
  // }
}
