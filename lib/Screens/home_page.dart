import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Res/drawer_header.dart';
import 'package:junaid_jafferi/Res/junaid_icons.dart';
import 'package:junaid_jafferi/Screens/istikhara_service.dart';
import 'package:junaid_jafferi/Screens/itemlist.dart';
import 'package:junaid_jafferi/Screens/rohani_ilag.dart';
import 'package:junaid_jafferi/Screens/spirtual_treatment.dart';

import 'asma_ul_husna.dart';
import 'horscope.dart';


class HomePage extends StatefulWidget {
  static String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.itemlist;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.itemlist) {
      container = ItemList();
    } else if (currentPage == DrawerSections.asmaulhusna) {
      container = AsmaulHusna();
    }else if (currentPage == DrawerSections.horscope) {
      container = Horscope();
    }
    else if (currentPage == DrawerSections.spirtual) {
      container = Spirtual_Treatment();
    } else if (currentPage == DrawerSections.rohani) {
      container = RohainIlag();
    } else if (currentPage == DrawerSections.istikhara) {
      container = Istikhara_Service();
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Junaid Jafferi',style: Textt1.textStyle(Colors.white, 18),),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Home", Icons.dashboard_outlined,
              currentPage == DrawerSections.itemlist ? true : false),
          menuItem(2, "Asma-ul-Husna", Junaid.asma,
              currentPage == DrawerSections.asmaulhusna ? true : false),
          menuItem(3, "Horscope", FontAwesomeIcons.star,
              currentPage == DrawerSections.horscope ? true : false),
          menuItem(4, "Spirtual Treatment", Junaid.spirtual,
              currentPage == DrawerSections.spirtual ? true : false),
          menuItem(5, "Rohani Ilag", Junaid.tasbih,
              currentPage == DrawerSections.rohani ? true : false),
          menuItem(6, "Istikhara Service", FontAwesomeIcons.prayingHands,
              currentPage == DrawerSections.istikhara ? true : false),

        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.itemlist;
            } else if (id == 2) {
              currentPage = DrawerSections.asmaulhusna;
            } else if (id == 3) {
              currentPage = DrawerSections.horscope;
            } else if (id == 4) {
              currentPage = DrawerSections.spirtual;
            } else if (id == 5) {
              currentPage = DrawerSections.rohani;
            }
            else if (id == 6) {
              currentPage = DrawerSections.istikhara;
            }

          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.orangeAccent,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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

enum DrawerSections {
  itemlist,
  quran,
  asmaulhusna,
  horscope,
  luckystone,
  spirtual,
  rohani,
  istikhara,
}