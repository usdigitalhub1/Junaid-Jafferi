import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';

class Virgo_Detail extends StatefulWidget {
  const  Virgo_Detail({Key? key}) : super(key: key);
  static String id ='virgo_detail';

  @override
  _Virgo_DetailState createState() => _Virgo_DetailState();
}

class _Virgo_DetailState extends State< Virgo_Detail> {
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
                              height: 70,
                              child: Image.asset('assets/images/virgo.png')),
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
                            Text('Virgo',style: Textt2.textStyle(kSecondaryColor, 18),),
                            SizedBox(height: 5,),
                            Text('I Am',style: Textt1.textStyle(kSecondaryColor, 15),),
                            SizedBox(height: 5,),
                            Text('Aug 24 to Sep 22 ',style: Textt1.textStyle(kSecondaryColor, 15),),
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
                    Text('Virgos are always paying attention to the smallest details and their deep sense of humanity '
                        'makes them one of the most careful signs of the zodiac. Their methodical approach to life'
                        ' ensures that nothing is left to chance, and although they are often tender, their heart'
                        ' might be closed for the outer world. '
                      ,style: Textt1.textStyle(kSecondaryColor, 14),textAlign: TextAlign.center,),


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
                                Text('Mercury',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text('rey, Beige, Yellow',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text('Wednesday ',style: Textt2.textStyle(kSecondaryColor, 15),),
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
                                Text('Pisces, Cancer ',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text(' 5, 14, 15, 23, 32  ',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                          child: Text('Loyal, analytical, kind, hardworking, practical',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Weaknesses:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Arrogant, stubborn, self-centered, lazy, inflexible',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Likes:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Animals, healthy food, books, nature, cleanliness ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Dislikes:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(' Rudeness, asking for help, taking center stage',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Love and Sex',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('The sign of Virgo leads Venus to its tragic fall and speaks of one\'s '
                              'inability to feel worthy, beautiful, or lovable. Compatibility of Virgo with other '
                              'zodiac signs is mostly based on the ability of their partner to give them all '
                              'the love they need to start feeling safe and open up enough to show their soft, '
                              'vulnerable heart. They will rarely have direct statements of love, but intimacy '
                              'brings out all of the beauty of their emotional self-expression. '
                              'A Virgo will prefer a stable relationship than having fun, casual lovers, '
                              'except if they become one, using their charm and superficial communication to win '
                              'hearts without ever investing their own. Methodical and intellectually dominant, '
                              'each Virgo seems to have an equation in their mind that their partner has to follow. ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Family',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(' Family — People born with their Sun in Virgo are very dedicated to their family '
                              'and attentive to elderly and sick people. They understand tradition and the importance of '
                              'responsibility, proud of their upbringing and everything that made their mind be as dominant as it is. '
                            ,style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Friends',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(' Friends — Virgos are excellent advisors, always knowing how to solve a problem. '
                              'This can make them helpful and extremely useful to have around, but also brings out their'
                              ' need to search the problem in everything and everyone around them. They will care for people '
                              'they build a solid relationship with, treasuring them for years and nurturing them in '
                              'every possible way. An intimate friendship with a Virgo is always earned by good deeds. '
                              ,style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Career and Money',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(' Virgos are practical, analytical and hard-working, always knowing exactly where '
                              'to look for the core o any problem. Their methodology makes them shine at jobs that require'
                              ' good organization, dealing with paperwork, problem solving and working with their minds '
                              'and their hands. When they focus, perfection is to be expected from their work, for no other '
                              'sign has such an eye for details as Virgo. In love with books and artistic expression, they make good critics,'
                              'while their need to help humankind serves them best if they decide to become doctors, nurses or psychologists. '
                            ,style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
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
