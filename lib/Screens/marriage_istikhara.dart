import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Widget/detailstextfield.dart';
import 'package:junaid_jafferi/Widget/raisedbutton.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class MarriageIstikhara extends StatefulWidget {
  const MarriageIstikhara({Key? key}) : super(key: key);
  static String id = 'marriage_istikhara';

  @override
  _MarriageIstikharaState createState() => _MarriageIstikharaState();
}

class _MarriageIstikharaState extends State<MarriageIstikhara> {
  final TextEditingController GirlName = TextEditingController();
  final TextEditingController BoyName = TextEditingController();
  final TextEditingController BothSunni = TextEditingController();
  final TextEditingController Committed = TextEditingController();
  final TextEditingController Agree = TextEditingController();
  final TextEditingController ParentsAgree = TextEditingController();
  final TextEditingController Engaged = TextEditingController();
  final TextEditingController Email = TextEditingController();
  final TextEditingController Country = TextEditingController();
  final TextEditingController City = TextEditingController();
  final TextEditingController Before = TextEditingController();

  bool _validate1 = false;
  bool _validate2 = false;
  bool _validate3 = false;
  bool _validate4 = false;
  bool _validate5 = false;
  bool _validate6 = false;
  bool _validate7 = false;
  bool _validate8 = false;
  bool _validate9 = false;
  bool _validate10 = false;
  bool _validate11 = false;

  @override
  void dispose() {
    GirlName.dispose();
    BoyName.dispose();
    BothSunni.dispose();
    Committed.dispose();
    Agree.dispose();
    ParentsAgree.dispose();
    Engaged.dispose();
    Email.dispose();
    Country.dispose();
    City.dispose();
    Before.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DetailsTextField(
                  hinttextt: 'Girl and M_Name',
                  controller: GirlName,
                  errorText: _validate1 ? 'Girl Name Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),
                DetailsTextField(
                  hinttextt: 'Boy and M_Name',
                  controller: BoyName,
                  errorText:
                  _validate2 ? 'Boy Name Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Both ARe Sunni?',
                  controller: BothSunni,
                  errorText:
                  _validate3 ? 'This field Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Committed somewhere or not',
                  controller: Committed,
                  errorText:
                  _validate4 ? 'This field Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Agree or not',
                  controller: Agree,
                  errorText: _validate5 ? 'This field Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Both Parents agreed or not',
                  controller: ParentsAgree,
                  errorText: _validate6 ? 'This field Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Both of them engaged?',
                  controller: Engaged,
                  errorText: _validate7 ? 'This field Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Email',
                  controller: Email,
                  errorText: _validate8 ? 'Email Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Country',
                  controller: Country,
                  errorText: _validate9 ? 'This field Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'City',
                  controller: City,
                  errorText: _validate10 ? 'This field Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Have you got istekhara before ?',
                  controller: Before,
                  errorText: _validate11 ? 'Before Can\'t Be Empty' : null,
                ),
                SizedBox(
                  height: 25,
                ),
                RaisedBtn(
                  textt: 'SUBMIT',
                  onchanged: () async {
                    setState(()  {
                      GirlName.text.isEmpty
                          ? _validate1 = true
                          : _validate1 = false;
                      BoyName.text.isEmpty
                          ? _validate2 = true
                          : _validate2 = false;
                      BothSunni.text.isEmpty
                          ? _validate3 = true
                          : _validate3 = false;
                      Committed.text.isEmpty
                          ? _validate4 = true
                          : _validate4 = false;
                      Agree.text.isEmpty
                          ? _validate5 = true
                          : _validate5 = false;
                      ParentsAgree.text.isEmpty
                          ? _validate6 = true
                          : _validate6 = false;
                      Engaged.text.isEmpty
                          ? _validate7 = true
                          : _validate7 = false;
                      Email.text.isEmpty
                          ? _validate8 = true
                          : _validate8 = false;
                      Country.text.isEmpty
                          ? _validate9 = true
                          : _validate9 = false;
                      City.text.isEmpty
                          ? _validate10 = true
                          : _validate10 = false;
                      Before.text.isEmpty
                          ? _validate11 = true
                          : _validate11 = false;
                      if(!_validate11) LaunchWhatsapp();
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void LaunchWhatsapp() async {


      final link = WhatsAppUnilink(
        phoneNumber: '00923000677791',
        text: '${SendData()}',
      );

      await launch('$link') .then((value) =>
      {
        GirlName.clear(),
        BoyName.clear(),
        BothSunni.clear(),
        Committed.clear(),
        Agree.clear(),
        ParentsAgree.clear(),
        Engaged.clear(),
        Email.clear(),
        Country.clear(),
        City.clear(),
        Before.clear(),
      });


    }
  SendData() {
    String test = 'Girl Name: ${ GirlName.text.toString().trim()}\n\n'
        'Boy Name: ${ BoyName.text.toString().trim()}\n\n'
        'Both Are Sunni?: ${ BothSunni.text.toString().trim()}\n\n'
        'Committed Somewhere: ${ Committed.text.toString().trim()}\n\n'
        'Agreed: ${ Agree.text.toString().trim()}\n\n'
        'Both Parents Agreed: ${ ParentsAgree.text.toString().trim()}\n\n'
        'Both of them Engage: ${ Engaged.text.toString().trim()}\n\n'
        'Email: ${Email.text.toLowerCase().trim()}\n\n'
        'Country Name: ${Country.text.toString().trim()}\n\n'
        'City Name: ${City.text.toString().trim()}\n\n'
        'Istekhara Before ?: ${Before.text.toString().trim()}\n\n';


    return test;
  }


}
