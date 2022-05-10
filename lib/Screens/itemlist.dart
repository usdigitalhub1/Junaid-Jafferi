import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junaid_jafferi/Drawer/naviigation_drawer.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Widget/youtube_Player1.dart';

import 'dashboard.dart';

class ItemList extends StatefulWidget {
  static String id = 'itemlist';

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Widget> list = [
    Tab(
      text: 'General Amal',
    ),

    // second tab [you can add an icon using the icon property]
    Tab(
      text: 'Services',
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
        drawer: const NavigationDrawer(),
        appBar: AppBar(
          elevation: 0,
          title: Text('Junaid Jafferi',style: Textt1.textStyle(Colors.white, 18),),

        ),
        floatingActionButton: FloatingActionButton(
         backgroundColor: kPrimaryFontColor,
          onPressed: () {
            _saveContact();
          },
          child: Icon(
            FontAwesomeIcons.whatsapp,
            color: Colors.green,
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Color(0xff08392D),
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                    border: Border.all()),
                child: new TabBar(
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
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
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Dashboard(),
                  YoutubePlayer1(),
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
