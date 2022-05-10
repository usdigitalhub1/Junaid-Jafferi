import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Drawer/naviigation_drawer.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Widget/quran_player.dart';


class Quran_Pak extends StatefulWidget {
  const Quran_Pak({Key? key}) : super(key: key);

  @override
  _Quran_PakState createState() => _Quran_PakState();
}

class _Quran_PakState extends State<Quran_Pak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),

      appBar: AppBar(
        elevation: 0,
        title: Text('Quran Pak',style: Textt1.textStyle(Colors.white, 18),),

      ),

      body:  Quran_Player(),
    );
  }
}
