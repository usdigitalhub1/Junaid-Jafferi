import 'package:flutter/material.dart';


const kPrimarycolor=Color(0xff015138);
const kSecondaryColor=Colors.white;
const kPrimaryFontColor=Colors.black;



class Textt1{

  static TextStyle textStyle(Color color,double fontsize)
  {
    return TextStyle(
      color: color,
      fontSize: fontsize,
      fontWeight: FontWeight.normal,

    );
  }
}


class Textt2{

  static TextStyle textStyle(Color color,double fontsize)
  {
    return TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: FontWeight.bold
    );
  }
}
