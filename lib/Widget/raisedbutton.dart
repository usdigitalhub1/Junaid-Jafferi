import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';


class RaisedBtn extends StatelessWidget {

  final String textt;
  final onchanged;

  RaisedBtn({@required required this.textt,this.onchanged,});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      focusElevation: 10,
      highlightElevation: 10,
      hoverElevation: 10,
      color: Color(0xff064493),
      elevation: 4,
      child:SizedBox(
        width: 400,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(textt,style: Textt1.textStyle(kSecondaryColor, 15),textAlign: TextAlign.center,),
        ),
      ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      onPressed: onchanged

    );
  }

}
