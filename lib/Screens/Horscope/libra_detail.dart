import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';

class Libra_Detail extends StatefulWidget {
  const  Libra_Detail({Key? key}) : super(key: key);
  static String id ='libra_detail';

  @override
  _Libra_DetailState createState() => _Libra_DetailState();
}

class _Libra_DetailState extends State< Libra_Detail> {
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
                              child: Image.asset('assets/images/libra.png')),
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
                            Text('Libra',style: Textt2.textStyle(kSecondaryColor, 18),),
                            SizedBox(height: 5,),
                            Text('I Am',style: Textt1.textStyle(kSecondaryColor, 15),),
                            SizedBox(height: 5,),
                            Text('Sep 23 to Oct 22',style: Textt1.textStyle(kSecondaryColor, 15),),
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
                    Text('People born under the sign of Libra are peaceful, fair, and they hate being alone.'
                        'Partnership is very important for them, as their mirror and someone giving them the '
                        'ability to be the mirror themselves. These individuals are fascinated by balance and symmetry, '
                        'they are in a constant chase for justice and equality, realizing through life that the only thing '
                        'that should be truly important to themselves in their own inner core of personality. '
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
                                Text('Air',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text('Pink, Green',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text('Friday',style: Textt2.textStyle(kSecondaryColor, 15),),
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
                                Text('Aries, Sagittarius',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                                Text(' 4, 6, 13, 15, 24  ',style: Textt1.textStyle(kSecondaryColor, 15),)

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
                          child: Text(' Cooperative,diplomatic, gracious, fair-minded, Social.',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Weaknesses:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Indecisive, avoids confrontations, will carry a grudge, self-pity',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Likes:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Harmony, gentleness, sharing with others, the outdoors',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Dislikes:',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(' Violence, injustice, loudmouths, conformity',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Love and Sex',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Libra is the sign of marriage, making its representatives open for traditional pathways of love. '
                              'Even though the element of Air gives them a lot of flexibility, they will still feel the strong pull'
                              ' towards tradition and their desires will eventually turn to love put on paper, well-organized and '
                              'serving a purpose to create a certain image for the outer world. In a way, each Libra is in search'
                              ' of a partner who has the ability to set clear boundaries, as if expecting to be protected by them '
                              'but without their pride being endangered in the process. ',style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Family',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Family — Born into a family that gave them a certain weakness of the Sun, '
                              'Libra can often transfer guilt between family members without even being aware of doing so. '
                              'In constant search for harmony these individuals have a tendency to agree with their '
                              'parents and siblings only to avoid conflict, being the one to pull back when a challenge comes their way. '
                              'They need to nurture their personality and often turn to solitude only to discover their own point of view among many. '
                              'If they are well built and worked on their inner sense of power, they discover ease in being a good parent and role model,'
                              'ready to share everything they know with their children. '
                            ,style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Friends',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Friends — Libra representatives are highly social and put their friends in the limelight, '
                              'but sometimes raise their expectation bars too high, and choose friendships that make them feel '
                              'superior to the person standing in front of them. Their nature makes them indecisive which is why '
                              'they might show a lack of. Still, this won\'t make them any less invested in their relationships '
                              'when someone else takes the baton and shows interest in them. Tactful and calm, they can communicate '
                              'through any problem if they want to, and will often help others understand the other side of their '
                              'personal conflicts and trouble with other people.'
                              ,style: Textt1.textStyle(kPrimaryFontColor, 14),textAlign: TextAlign.left,),
                        ),
                        SizedBox(height: 10,),
                        Text('Career and Money',style: Textt2.textStyle(Color(0xffCC9966), 18),),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('For each Libra, the key to a happy life is in a fine balance, '
                              'meaning they will not commit to work without setting apart enough time '
                              'for their private life and their loved ones, and if they do, they will feel'
                              ' like they need to set free from it. They can be loved leaders even though they sometimes lack'
                              ' the initiative needed to organize people who work for them, and will work '
                              'hard to deserve privileges that come their way. In search for truth and justice, '
                              'they are good lawyers and judges, and can also be successful as diplomats, designers and composers '
                              ' they have nurtured their artistic side from childhood. They will work well in a group, and can'
                              ' be convincing and gifted speakers. '
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
