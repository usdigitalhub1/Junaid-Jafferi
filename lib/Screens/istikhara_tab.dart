import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Screens/general_istikhara.dart';
import 'package:junaid_jafferi/Screens/marriage_istikhara.dart';

class Istikhara_Tab extends StatefulWidget {
  const Istikhara_Tab({Key? key}) : super(key: key);
  static String id = 'istikhara_tab';
  @override
  _Istikhara_TabState createState() => _Istikhara_TabState();
}

class _Istikhara_TabState extends State<Istikhara_Tab>  with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Widget> list = [
    Tab(
      text: 'General Istikhara',
    ),

    // second tab [you can add an icon using the icon property]
    Tab(
      text: 'Marriage Istikhara',
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(length: list.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: list.length,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10,),
            SafeArea(
              child: Center(
                child: Container(
                  height: 40,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Color(0xff08392D),
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                      border: Border.all()),
                  child: new TabBar(
                      labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BubbleTabIndicator(
                        indicatorHeight: 40.0,
                        indicatorColor: Colors.white,
                        tabBarIndicatorSize: TabBarIndicatorSize.tab,
                        // Other flags
                        // indicatorRadius: 1,
                        // insets: EdgeInsets.all(1),
                        // padding: EdgeInsets.all(10)
                      ),
                      labelColor: kPrimaryFontColor,
                      unselectedLabelColor: Colors.white,
                      indicatorColor: Colors.black,
                      tabs: list),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.only(right: 20,left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Department Rohani Ilaj does thousands of Istikhara online on a daily basis. Istikharahs are also'
                  'arranged via Email, WhatsApp, Phone to comfort the grief-stricken Ummah. You can have your'
                'Istikhara done via this service just by submitting a short form from any part of the world.'
                      ,style: Textt1.textStyle(kSecondaryColor, 15),textAlign: TextAlign.justify,),
                    GestureDetector(
                      onTap: (){
                        _saveContact();
                      },
                      child: Column(
                        children: [
                          Text('Click And Add Our Number',style: Textt2.textStyle(Colors.yellowAccent, 15),),
                          Text('+92 300 0677791',style: Textt2.textStyle(Colors.yellowAccent, 15),),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  GeneralIstikhara(),
                  MarriageIstikhara(),

                ],
              ),
            ),
          ],
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
