import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';


class CarddDesign extends StatelessWidget {
  final  icn;
  final String textt;
  const CarddDesign({Key? key, Key, this.icn, required this.textt}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)),
      elevation: 4,
      color: Colors.white,
      child: Container(
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Icon(icn,size: 30,color: Colors.orangeAccent,),
            SizedBox(
              height: 15,
            ),
            FittedBox(
                child: Text(textt,style: Textt2.textStyle(kPrimaryFontColor, 15.0),),
            )
          ],
        ),
      ),
    );
  }
}
