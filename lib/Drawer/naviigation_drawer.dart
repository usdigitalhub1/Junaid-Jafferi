import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Res/junaid_icons.dart';
import 'package:junaid_jafferi/Screens/asma_ul_husna.dart';
import 'package:junaid_jafferi/Screens/horscope.dart';
import 'package:junaid_jafferi/Screens/istikhara_service.dart';
import 'package:junaid_jafferi/Screens/itemlist.dart';
import 'package:junaid_jafferi/Screens/lucky_stone.dart';
import 'package:junaid_jafferi/Screens/quran_pak.dart';
import 'package:junaid_jafferi/Screens/rohani_ilag.dart';
import 'package:junaid_jafferi/Screens/spirtual_treatment.dart';

import 'drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            headerWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Column(
                children: [
                  DrawerItem(
                    name: 'Home',
                    icon: Icons.dashboard_outlined,
                    onPressed: () => onItemPressed(context, index: 0),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'Quran Pak',
                      icon: Junaid.quran,
                      onPressed: () => onItemPressed(context, index: 1)),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'Asma-ul-Husna',
                      icon: Junaid.asma,
                      onPressed: () => onItemPressed(context, index: 2)),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'Horscope',
                      icon: FontAwesomeIcons.star,
                      onPressed: () => onItemPressed(context, index: 3)),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'Lucky Stone',
                      icon: FontAwesomeIcons.gem,
                      onPressed: () => onItemPressed(context, index: 4)),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'Spirtual Treatment',
                      icon: Junaid.spirtual,
                      onPressed: () => onItemPressed(context, index: 5)),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'Rohani Ilag',
                      icon: Junaid.tasbih,
                      onPressed: () => onItemPressed(context, index: 6)),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'Istikhara Service',
                      icon: FontAwesomeIcons.prayingHands,
                      onPressed: () => onItemPressed(context, index: 7)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ItemList()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Quran_Pak()));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AsmaulHusna()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Horscope()));
        break;
      case 4:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LuckyStone()));
        break;
      case 5:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const Spirtual_Treatment()));
        break;
      case 6:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const RohainIlag()));
        break;
      case 7:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Istikhara_Service()));
        break;
    }
  }

  Widget headerWidget() {
    return SafeArea(
      child: Container(
        color: Color(0xff015138),
        width: double.infinity,
        height: 230,
        padding: EdgeInsets.only(right: 15, left: 15, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 120,
              decoration: BoxDecoration(
                // shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/splash.png'),
                ),
              ),
            ),
            Text(
              "Junaid Jafferi",
              style: Textt2.textStyle(kSecondaryColor, 18),
            ),
            Text(
              "World Gold Medal Specialist Astrologer and Rohani Scholar Junaid Jafferi",
              style: Textt1.textStyle(kSecondaryColor, 14),
            ),
          ],
        ),
      ),
    );
  }
}
