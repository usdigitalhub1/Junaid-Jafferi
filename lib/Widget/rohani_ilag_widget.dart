import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Utils/rohani_list.dart';


Widget buildrohaniilag(BuildContext context, index) {
  final data = RohaniList.list[index];
  return SingleChildScrollView(
   child: Padding(
     padding: const EdgeInsets.only(left: 20,right: 20,top: 12),
     child: Column(
       children: [
         Card(
           elevation: 4,
           shadowColor: Colors.black,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(12.0),
           ),
           child: Container(
             height: 280,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12.0),
               image: DecorationImage(image: AssetImage(data.img),fit: BoxFit.fill),

             ),
           ),
         ),
         SizedBox(height: 10,),
       ],
     ),
   ),
  );
}
