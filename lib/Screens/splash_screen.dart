import 'dart:async';

import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Screens/itemlist.dart';


class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);
  static String id ='splash_screen';

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                ItemList(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimarycolor,
      body: Center(
        child: Container(
          height: 350,
          decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/splash.png"),
                )
          ),

        ),
      ),
    );

  }
}
