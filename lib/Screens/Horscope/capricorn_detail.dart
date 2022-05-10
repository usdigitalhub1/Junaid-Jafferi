import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';

class Capricorn_Detail extends StatefulWidget {
  const Capricorn_Detail({Key? key}) : super(key: key);
  static String id ='capricorn_detail';

  @override
  _Capricorn_DetailState createState() => _Capricorn_DetailState();
}

class _Capricorn_DetailState extends State<  Capricorn_Detail> {
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
                              child: Image.asset('assets/images/capricorn.png')),
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
                            Text('Capricorn',style: Textt2.textStyle(kSecondaryColor, 18),),
                            SizedBox(height: 5,),
                            Text('I Am',style: Textt1.textStyle(kSecondaryColor, 15),),
                            SizedBox(height: 5,),
                            Text(' Dec 22 to Jan 20',style: Textt1.textStyle(kSecondaryColor, 15),),
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
                    Text('Capricorn is a sign that represents time and responsibility, and its representatives are traditional '
                        'and often very serious by nature. These individuals possess an inner state of independence that enables '
                        'significant progress both in their personal and professional lives. They are masters of self-control and '
                        'have the abilily to lead the way, make solid and realistic plans, and manage many people who work for them at any time. '
                        'They will learn from their mistakes and get to the top based solely on their experience and expertise. '
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
                                Text('Saturn',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text('Brown, Black',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text('Saturday',style: Textt2.textStyle(kSecondaryColor, 15),),
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
                                Text('Taurus, Cancer',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text('4, 8, 13, 22',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                          child: Text('Generous, idealistic, great sense of humor',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Weaknesses:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Know-it-all, unforgiving, condescending, expecting the worst ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Likes:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Family, tradition, music, understated status, quality craftsmanship ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Dislikes:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Almost everything at some point',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Love and Sex',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('It is not easy to win over the attention and the heart of a Capricorn, '
                              'but once their walls break and their heart melts they stay committed for a lifetime. '
                              'Their Their relationships with other signs can be challenging due to their difficult character, '
                              'but any shared feeling that comes from such a deep emotional place is a reward for their partner\'s efforts. '
                              'Shown sensitivity comes through acts rather than words, and years are often needed for them to open enough to '
                              'chat about their actual emotional problems. ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Family',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Family — This is a sign with full understanding for family traditions. '
                              'Capricorns feel connected to every single thing from their past and their childhood, '
                              'and loves bringing out these memories whenever a season of holidays or birthdays is near. '
                              'This is a sign of a typical conflict one has over dominance in their household, with their '
                              'father being and extremely important figure in the way this person built their self-image over the years.'
                              ' As parents they tend to be strict but fair, readily taking on responsibilities that come with a child. '
                            ,style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Friends',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(' Friends - Capricorn is intelligent, stable and reliable, and this makes its representatives loyal and extremely good friends, '
                              'standing in one\'s life as pillars on their way to their dreams. They need to be surrounded by people who don\'t '
                              'ask too many nosey questions, know where boundaries are set, but also warm, open-hearted and loyal enough to follow their lead. '
                              'They will not collect too many friends in this lifetime, but turn to those who make them feel at peace, intelligent and honest at all times. '
                              ,style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Career and Money',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Money will be truly valued in lives of these individuals, and they won\'t '
                              'have much trouble managing it and saving some for a rainy day, for as long as their debts don\'t '
                              'swallow their actual abilities. Hard workers with a higher cause, they will do anything they '
                              'can to set free from a loan or a mortgage of any time, but also know that true success will only come in the long run. '
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
