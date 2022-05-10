import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junaid_jafferi/Drawer/naviigation_drawer.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Screens/Horscope/aquarius_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/aries_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/cancer_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/capricorn_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/gemini_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/leo_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/pisces_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/sagittarius_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/taurus_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/virgo_detail.dart';

import 'Horscope/libra_detail.dart';
import 'Horscope/scorpio_detail.dart';

class Horscope extends StatefulWidget {
  const Horscope({Key? key}) : super(key: key);
  static String id = 'horscope';

  @override
  _HorscopeState createState() => _HorscopeState();
}

class _HorscopeState extends State<Horscope> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Horscope',
          style: Textt1.textStyle(Colors.white, 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _saveContact();
        },
        child: Icon(
          FontAwesomeIcons.whatsapp,
          color: Colors.green,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Aries_Detail()));
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 90,
                                            child: Image.asset(
                                                'assets/images/aries.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Aries',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Taurus_Detail())
                        );
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 80,
                                            child: Image.asset(
                                                'assets/images/taurus.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Taurus',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Gemini_Detail()));
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 90,
                                            child: Image.asset(
                                                'assets/images/gemini.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Gemini',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Cancer_Detail()));
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 80,
                                            child: Image.asset(
                                                'assets/images/cancer.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Cancer',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Leo_Detail()));
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 80,
                                            child: Image.asset(
                                                'assets/images/leo.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Leo',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Virgo_Detail()));
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 90,
                                            child: Image.asset(
                                                'assets/images/virgo.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Virgo',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Libra_Detail()));
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 75,
                                            child: Image.asset(
                                                'assets/images/libra.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Libra',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Scorpio_Detail()));
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 80,
                                            child: Image.asset(
                                                'assets/images/scorpio.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Scorpio',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sagittarius_Detail()));
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 90,
                                            child: Image.asset(
                                                'assets/images/sagittarius.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Sagittarius',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Capricorn_Detail()));
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 80,
                                            child: Image.asset(
                                                'assets/images/capricorn.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Capricorn',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Aquarius_Detail()));
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 80,
                                            child: Image.asset(
                                                'assets/images/aquarius.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Aquarius',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pisces_Detail()));
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          height: 160,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: kSecondaryColor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: kSecondaryColor,
                                    ),
                                    child: Center(
                                        child: Container(
                                            height: 90,
                                            child: Image.asset(
                                                'assets/images/pisces.png'))),
                                  )),
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    bottomRight: Radius.circular(8),
                                  ),
                                  color: kPrimaryFontColor,
                                ),
                                child: Center(
                                  child: Text(
                                    'Pisces',
                                    style:
                                        Textt1.textStyle(kSecondaryColor, 15),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
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
  Future _saveContact() async {
    if (await FlutterContacts.requestPermission()) {
      final newContact = Contact();
      newContact.name.first='Junaid';
      newContact.name.last='Jafferi';
      newContact.phones=[Phone('+923000677791'),];
      await newContact.insert().then((value) {
        final snackBar = SnackBar(
          content: const Text('Contact Added Successfully'),
          backgroundColor: (Colors.black),
          action: SnackBarAction(
            label: 'dismiss',
            onPressed: () {
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
      print('Added');
      return newContact;
    }
  }

}
