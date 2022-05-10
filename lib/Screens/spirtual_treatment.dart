import 'package:flutter/material.dart';
import 'package:flutter_contacts/contact.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junaid_jafferi/Drawer/naviigation_drawer.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Widget/youtube_Player3.dart';

class Spirtual_Treatment extends StatefulWidget {
  const Spirtual_Treatment({Key? key}) : super(key: key);
  static String id = 'spirtual_treatment';

  @override
  _Spirtual_TreatmentState createState() => _Spirtual_TreatmentState();
}

class _Spirtual_TreatmentState extends State<Spirtual_Treatment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),

      appBar: AppBar(
        elevation: 0,
        title: Text('Spirtual Treatment',style: Textt1.textStyle(Colors.white, 18),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _saveContact();
        },
        child: Icon(
          FontAwesomeIcons.whatsapp,
          color: Colors.green,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            children: [
              Container(
                height: 310,
                child: Row(
                  children: [
                    Expanded(child: Column(
                      children: [
                        Image.asset('assets/images/som_treatment.jpg',fit: BoxFit.fill,),
                      ],
                    )),
                    SizedBox(width: 8,),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                          Text('During the process of Spirtual mind treatment, also known as Affirmative Prayer,'
                              'Scientific Prayer or simply \'Treatment\',' 'we come to the realisation that within'
                          'the universe there is one Infinite, Universal Presence that permeates everything,and '
                              'therefore this Presence, being everywhere, has to be right withinUs, as well. With '
                              'this attitude of mind we reach an acceptance of new possibilities in life, we are able '
                              'to \'see\', \'feel\' and speak of the good we desire as already ours. Then we let the universe work its magic.'
                          ,style: Textt1.textStyle(kSecondaryColor, 13),
                          ),
                          ],
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: Center(
                  child: Text('A Treatment is not about convincing God to'
                  ' do something for us. It is becoming aware of the God presence within.'
                  ,style: Textt2.textStyle(Colors.yellow, 13),
                  ),
                ),
              ),
              Container(
                height: 250,
                child: YoutubePlayer3(),
              ),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.yellowAccent,width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(text: TextSpan(text: 'Step one:',style: Textt2.textStyle(kPrimaryFontColor, 18),
                        children: [
                          TextSpan(text: ' We acknowledge that within the universe there is ONE pervading presence,'
                          'ONE force encompassing everything that is in existence, ONE energy from which all things'
                          'are made of. Many people throughout the ages have called this Source of all things,'
                          'God. The name is not important, what matters is that we recognise this truth.'
                          ,style: Textt1.textStyle(kPrimaryFontColor, 16),
                          )
                        ],
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.yellowAccent,width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(text: TextSpan(text: 'Step Two:',style: Textt2.textStyle(kPrimaryFontColor, 18),
                          children: [
                            TextSpan(text: ' Having recognised the magnificence and awesome power of the ONE presence'
                            'that is absolutely everywhere within the universe, we realise that this same intelligence'
                              'that created everything, does not stop being where we are. Therefore It is within us; It is the'
                              'substance that life is made of. In this step we become aware of who we really are: A Divine'
                              'Being made of the God\'s energy and having a human experience.'
                              ,style: Textt1.textStyle(kPrimaryFontColor, 16),
                            )
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Container(
                  height: 105,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.yellowAccent,width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(text: TextSpan(text: 'Step Three:',style: Textt2.textStyle(kPrimaryFontColor, 18),
                          children: [
                            TextSpan(text: ' We name our desire(s) with the feeling that as we do this, it is already ours.'
                          'We are moving away from the feeling of \'wanting\' to the feeling of \'having\' already received.'
                              ,style: Textt1.textStyle(kPrimaryFontColor, 16),
                            )
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.yellowAccent,width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(text: TextSpan(text: 'Step four:',style: Textt2.textStyle(kPrimaryFontColor, 18),
                          children: [
                            TextSpan(text: ' We summon, from withi ourselves, a feeling of gratitude. Of'
                            'course, the Source of \'ALL That Is\', does not need our gratitude to function; it is'
                            'rather that an attitude of gratitude opens our consciousness to receiving even'
                            'more good. As the Law of the universe is such that what we focus on, is what'
                            'we manifest in our experience, when we are focused on the good that we already'
                            'have, then we can only attract more good.'
                              ,style: Textt1.textStyle(kPrimaryFontColor, 16),
                            )
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),

                ),
                child: Container(
                  height: 145,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.yellowAccent,width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(text: TextSpan(text: 'Step five:',style: Textt2.textStyle(kPrimaryFontColor, 18),
                          children: [
                            TextSpan(text: ' Once we have accomplished the four previous steps, all we need to do is trust.'
                              'We release it to the wisdom and the love of the universe. The Creator does not require a'
                               'input on \'how\' our desire is manifesting its for us!'
                              ,style: Textt1.textStyle(kPrimaryFontColor, 16),
                            )
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
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
