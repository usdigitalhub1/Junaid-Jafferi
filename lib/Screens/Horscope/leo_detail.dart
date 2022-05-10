import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';

class Leo_Detail extends StatefulWidget {
  const Leo_Detail({Key? key}) : super(key: key);
  static String id ='leo_detail';

  @override
  _Leo_DetailState createState() => _Leo_DetailState();
}

class _Leo_DetailState extends State<Leo_Detail> {
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
                              child: Image.asset('assets/images/leo.png')),
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
                            Text('Leo',style: Textt2.textStyle(kSecondaryColor, 18),),
                            SizedBox(height: 5,),
                            Text('I Am',style: Textt1.textStyle(kSecondaryColor, 15),),
                            SizedBox(height: 5,),
                            Text('Jul 24 to Aug 23 ',style: Textt1.textStyle(kSecondaryColor, 15),),
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
                    Text('People born under the sign of Leo are natural born leaders.'
                        ' They are dramatic, creative, self-confident, dominant and extremely '
                        'difficult to resist, able to achieve anything they want to in any'
                        'area of life they commit to. There is a specific strength to a '
                        'Leo and their king of the jungle status. Leo often has many friends '
                        'for they are generous and loyal. Self-confident and attractive, '
                        'this is a Sun sign capable of uniting different groups of people and '
                        'leading them as one towards a shared cause, and their healthy sense of '
                        'humor makes collaboration with other people even easier. '
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
                                Text('Fire',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text('Sun',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text('Gold, Yellow, Orange ',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text('Sunday',style: Textt2.textStyle(kSecondaryColor, 15),),
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
                                Text('Aquarius, Gemini',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text('1, 3, 10, 19 ',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                          child: Text('Creative, passionate, generous, warm-hearted, cheerful, humorous',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
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
                          child: Text('Theater, taking holidays, being admired, expensive things, bright colors, fun with friends ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Dislikes:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Being ignored, facing difficult reality, not being treated like a king or queen',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Love and Sex',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('This Fire sign is passionate and sincere and its representatives show their feelings with ease and clarity.'
                              ' When in love, they are fun, loyal, respectful and very generous towards their loved one. '
                              'They will take the role of a leader in any relationship, and strongly rely on their need for independency and initiative.'
                              ' This can be tiring for their partner at times, especially if they start imposing their will and organizing '
                              'things that aren\'t theirs to organize in the first place. Each Leo needs a partner who is self-aware, '
                              'reasonable and on the same intellectual level as them. Their partner also has to feel free to express and fight '
                              'for themselves, or too much light from their Leo\'s Sun might burn their own personality down. ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Family',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Family - Family matters won\'t be the first thing '
                              'Leo will think about when they wake up in the morning or lie to bed at night. '
                              'Turned to themselves for the most part, they tend to become independent as soon as possible.'
                              ' Still, a Leo will do anything to protect their loved ones, proud of their ancestry and roots '
                              'in good and bad times.'
                            ,style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Friends',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(' Friends - Leo is generous, faithful and a truly loyal friend, '
                              'born with a certain dignity and commitment to individual values. '
                              'Born with a need to help others, they will do so even if it takes a lot time and energy. '
                              'Strong and reliable, this individual has the ability to appeal to almost everyone and '
                              'has the energy to host celebrations and different events with people that bring out the best in them. '
                              'They are rarely alone, for interactions with others give them the sense of self-esteem and awareness '
                              'they need, but could have trouble finding friends able to keep pace and follow the high energy '
                              'they carry everywhere they go.',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Career and Money',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(' Leos are highly energetic and tend to always be busy, no matter the need for their employment.'
                              ' They are ambitious, creative and optimistic and once they dedicate to their work, they will do everything'
                              ' just right. The best possible situation they can find themselves in is to be their own bosses or manage'
                              ' others with as little control from their superiors as possible. Jobs that allow open expression of artistic talent,'
                              ' such as acting and entertainment, are ideal for a Leo. Management, education and politics are also a good fit, '
                              'as well as anything that puts them in a leadership position which naturally suits them.'
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
