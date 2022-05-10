import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';

class DetailsTextField extends StatelessWidget {
  final String hinttextt;
  final controller;
  final errorText;
  const DetailsTextField({ required this.hinttextt, this.controller,this.errorText});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          errorText: errorText,
          hintText: hinttextt,hintStyle: Textt1.textStyle(Colors.blueAccent, 15),
          contentPadding: EdgeInsets.all(8),  // Added this
          border: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.redAccent),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:Colors.redAccent),
          ),
        ),
      ),
    );
  }
}
