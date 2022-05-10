import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';

class Taurus_Detail extends StatefulWidget {
  const Taurus_Detail({Key? key}) : super(key: key);
  static String id ='taurus_detail';

  @override
  _Taurus_DetailState createState() => _Taurus_DetailState();
}

class _Taurus_DetailState extends State<Taurus_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        height: 110,
                        width: 70,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.red,),
                        ),
                        child: Center(
                          child: Container(
                              height: 60,
                              child: Image.asset('assets/images/taurus.png')),
                        ),
                      ),
                    ),
                  )),
                  Expanded(
                      flex: 3,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Taurus',style: Textt2.textStyle(kSecondaryColor, 18),),
                            SizedBox(height: 5,),
                            Text('I Am',style: Textt1.textStyle(kSecondaryColor, 15),),
                            SizedBox(height: 5,),
                            Text('Apr 20 to May 20',style: Textt1.textStyle(kSecondaryColor, 15),),
                          ],
                        ),
                      )),
                ],
              ),
              Divider(color: kPrimaryFontColor,thickness: 1,),
              Container(
                width: 280,
                child: Column(
                  children: [
                    Text('Qualities',style: Textt2.textStyle(kSecondaryColor, 18),),
                    SizedBox(height: 10,),
                    Text('Taurus is an earth sign represented by the bull. '
                        'Like their celestial spirit animal, Taureans enjoy relaxing in serene, '
                        'bucolic environments, surrounded by soft sounds, soothing aromas, '
                        'and succulent flavors. Taurus is ruled by Venus, the enchanting planet '
                        'that governs love, beauty, and money. ',style: Textt1.textStyle(kSecondaryColor, 14),textAlign: TextAlign.center,),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 330,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 110,
                          width: 205,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kSecondaryColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Element',style: Textt2.textStyle(kSecondaryColor, 15),),
                                Text('Earth',style: Textt1.textStyle(kSecondaryColor, 15),)

                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 110,
                          width: 205,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kSecondaryColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Sun Sign',style: Textt2.textStyle(kSecondaryColor, 15),),
                                Text('Venus',style: Textt1.textStyle(kSecondaryColor, 15),)

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 110,
                          width: 205,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kSecondaryColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Color',style: Textt2.textStyle(kSecondaryColor, 15),),
                                Text('Green, Pink',style: Textt1.textStyle(kSecondaryColor, 15),)

                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 110,
                          width: 205,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kSecondaryColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Friday, Monday',style: Textt2.textStyle(kSecondaryColor, 15),),
                                Text('Tuseday',style: Textt1.textStyle(kSecondaryColor, 15),)

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 110,
                          width: 205,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kSecondaryColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Compatibility',style: Textt2.textStyle(kSecondaryColor, 15),),
                                Text('Scorpio, Cancer',style: Textt1.textStyle(kSecondaryColor, 15),)

                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 110,
                          width: 205,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: kSecondaryColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Lucky Number',style: Textt2.textStyle(kSecondaryColor, 15),),
                                Text('2, 6, 9, 12, 24',style: Textt1.textStyle(kSecondaryColor, 15),)

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
              Container(
                height: 500,
                color: kSecondaryColor,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text('Strengths:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Reliable, patient, practical, devoted, responsible, stable ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Weaknesses:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Stubborn, possessive, uncompromising ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Likes:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Gardening, cooking, music, romance, high quality clothes, working with hands',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Dislikes:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Sudden changes, complications, insecurity of any kind, synthetic fabrics ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Love and Sex',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('One always has to be prepared to have patience for a Taurus lover. '
                              'They are extremely sensual, touch, smell and all pleasurable senses being '
                              'extremely important to them, but they also need time to create a safe environment '
                              'and relax in their sexual encounters. When they create enough intimacy with a loved one, '
                              'they become a bit gooey, sometimes even needy, and have to keep their emotions in check,'
                              ' holding on to practical reasoning, while embracing change and initiative o1 their partner at all times. '
                              'This is a sign of physical pleasure, hedonism and the flow of emotion that isn\'t reserved for just anyone.',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Family',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Family — Home and matters of the family are very important to every Taurus. '
                              'This is a person who loves kids and appreciates time spent with people who love them, '
                              'respecting family routines, customs, and present in all events and gatherings. '
                              'They will enjoy hosting house parties for both their family and friends, '
                              'and don\'t mind cooking a meal for a room full of people if they just have fun in return.  ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),


                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
