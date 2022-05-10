import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Drawer/naviigation_drawer.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Widget/youtube_Player2.dart';

class AsmaulHusna extends StatefulWidget {
  const AsmaulHusna({Key? key}) : super(key: key);
  static String id = 'asma_ul_husna';
  @override
  _AsmaulHusnaState createState() => _AsmaulHusnaState();
}

class _AsmaulHusnaState extends State<AsmaulHusna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text('Asma-ul-Husna',style: Textt1.textStyle(kSecondaryColor, 18),),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 250,
            color: Colors.black,
            child: YoutubePlayer2(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 12),
              child: SingleChildScrollView(
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
                          image: DecorationImage(image: AssetImage('assets/images/99(1).jpg'),fit: BoxFit.fill),

                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
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
                          image: DecorationImage(image: AssetImage('assets/images/99(2).jpg'),fit: BoxFit.fill),

                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
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
                          image: DecorationImage(image: AssetImage('assets/images/99(3).jpg'),fit: BoxFit.fill),

                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
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
                          image: DecorationImage(image: AssetImage('assets/images/99(4).jpg'),fit: BoxFit.fill),

                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
