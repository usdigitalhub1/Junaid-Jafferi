import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';

class MyHeaderDrawer extends StatefulWidget {
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color:Color(0xff015138),
        width: double.infinity,
        height: 230,
        padding: EdgeInsets.only(top: 20.0,right: 12,left: 12),
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