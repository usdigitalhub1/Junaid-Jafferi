import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junaid_jafferi/Drawer/naviigation_drawer.dart';
import 'package:junaid_jafferi/Model/stoneModel.dart';
import 'package:junaid_jafferi/Res/Constant.dart';


class LuckyStone extends StatefulWidget {
  static String id = 'lucky_stone';

  @override
  _LuckyStoneState createState() => _LuckyStoneState();
}



class _LuckyStoneState extends State<LuckyStone> {
  DateTime currentDate = DateTime.now();

  List<StoneModel> stoneList = [
    StoneModel(
        image: 'assets/images/garnet.jpeg',
        title: 'Aquarius Zodiac Stone: Garnet',
        description:
        'Garnet: Friendly and humanitarian, honest and loyal, original and inventive, independent and intellectual.  Intractable and contrary, perverse and unpredictable, unemotional and detached.'),
    StoneModel(
        image: 'assets/images/amethyst.jpg',
        title: 'Pisces Zodiac Stone: Amethyst',
        description:
        'Amethyst: Imaginative and sensitive, compassionate and kind, selfless and unworldly, intuitive and sympathetic. Escapist and idealistic, secretive and vague, weak-willed and easily led.'),
    StoneModel(
        image: 'assets/images/blood_stone.jpg',
        title: 'Aries Zodiac Stone: Bloodstone',
        description:
        'Bloodstone: Adventurous and energetic, pioneering and courageous, enthusiastic and confident, dynamic and quick-witted.  Selfish and quick-tempered, impulsive and impatient.Bloodstone: Adventurous and energetic, pioneering and courageous, enthusiastic and confident, dynamic and quick-witted.  Selfish and quick-tempered, impulsive and impatient.'),
    StoneModel(
        image: 'assets/images/blue_sapphire.jpg',
        title: 'Taurus Zodiac Stone: Sapphire',
        description:
        'Sapphire: Patient and reliable, warmhearted and loving, persistent and determined, placid and security loving. Jealous and possessive, resentful and inflexible, self-indulgent and greedy.'),
    StoneModel(
        image: 'assets/images/agate.jpg',
        title: 'Gemini Zodiac Stone: Agate',
        description:
        'Agate: Adaptable and versatile, communicative and witty, intellectual and eloquent, youthful and lively. Nervous and tense, superficial and inconsistent, cunning and inquisitive.'),
    StoneModel(
        image: 'assets/images/emerald.jpg',
        title: 'Cancer Zodiac Stone: Emerald',
        description:
        'Emerald: Emotional and loving, intuitive and imaginative, shrewd and cautious, protective and sympathetic. Changeable and moody, overemotional and touchy, clinging and unable to let go.'),
    StoneModel(
        image: 'assets/images/onys.jpg',
        title: 'Leo Zodiac Stone: Onyx',
        description:
        'Onyx: Generous and warmhearted, creative and enthusiastic, broad-minded and expansive, faithful and loving. Pompous and patronizing, bossy and interfering, dogmatic and intolerant.'),
    StoneModel(
        image: 'assets/images/carnelian.jpg',
        title: 'Virgo Zodiac Stone: Carnelian',
        description:
        'Carnelian: Modest and shy, meticulous and reliable, practical and diligent, intelligent and analytical. Fussy and a worrier, overcritical and harsh, perfectionist and conservative.'),
    StoneModel(
        image: 'assets/images/chrysolite.jpg',
        title: 'Libra Zodiac Stone: Chrysolite',
        description:
        'Chrysolite: Diplomatic and urbane, romantic and charming , easygoing and sociable , idealistic and peaceable. Indecisive and changeable, gullible and easily influenced, flirtatious and self-indulgent'),
    StoneModel(
        image: 'assets/images/beryl.jpg',
        title: 'Scorpio Zodiac Stone: Beryl',
        description:
        'Beryl: Determined and forceful, emotional and intuitive, powerful and passionate, exciting and magnetic. Jealous and resentful, compulsive and obsessive, secretive and obstinate.'),
    StoneModel(
        image: 'assets/images/citrine.jpg',
        title: 'Sagittarius Zodiac Stone: Citrine',
        description:
        'Citrine: Optimistic and freedom-loving, jovial and good-humored, honest and straightforward, intellectual and philosophical. Blindly optimistic and careless, irresponsible and superficial, tactless and restless.'),
    StoneModel(
        image: 'assets/images/ruby.jpg',
        title: 'Capricorn Zodiac Stone: Ruby',
        description:
        'Ruby: Practical and prudent, ambitious and disciplined, patient and careful, humorous and reserved. Pessimistic and fatalistic, miserly and grudging.'),
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context, initialDate: currentDate, firstDate: DateTime(1947), lastDate: DateTime(2099));
    if (pickedDate != null && pickedDate != currentDate) {
      setState(() {
        currentDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),

      appBar: AppBar(
        elevation: 0,
        title: Text('Lucky Stone',style: Textt1.textStyle(Colors.white, 18),),

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryFontColor,
        onPressed: () {
          _saveContact();
        },
        child: Icon(
          FontAwesomeIcons.whatsapp,
          color: Colors.green,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assets/images/lucky_stone.png',height: 200,),
            ),
            SizedBox(height: 15,),
            Text('Please choose Your date of Birth So',style: Textt1.textStyle(Colors.white, 15),textAlign: TextAlign.center,),
            Text(' we can tell your lucky stone',style: Textt1.textStyle(Colors.white, 15),textAlign: TextAlign.center,),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('${currentDate.day}/',style: Textt2.textStyle(Colors.white, 15),),
                    Text('${currentDate.month}',style: Textt2.textStyle(Colors.white, 15),),

                  ],
                ),
                IconButton(onPressed: (){
                  _selectDate(context);
                }, icon: Icon(Icons.calendar_today,color: Colors.white,)),
              ],
            ),
            Divider(color: Colors.black,thickness: 2,),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Image.asset(stoneList[currentDate.month - 1].image)),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Text(
                        stoneList[currentDate.month - 1].title,
                        style: Textt2.textStyle(kSecondaryColor, 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        stoneList[currentDate.month - 1].description,
                        style: Textt1.textStyle(kSecondaryColor, 14),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  Future _saveContact() async {
    if (await FlutterContacts.requestPermission()) {
      final newContact = Contact();
      newContact.name.first='Junaid';
      newContact.name.last='Jafferi';
      newContact.phones=[Phone('+923000677791'),];
      await newContact.insert().then((value) {
        final snackBar = SnackBar(
          content: const Text('Contact Added Successfully'),
          backgroundColor: (Colors.black),
          action: SnackBarAction(
            label: 'dismiss',
            onPressed: () {
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
      print('Added');
      return newContact;
    }
  }

}





