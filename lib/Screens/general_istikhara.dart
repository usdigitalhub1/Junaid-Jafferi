import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Screens/dashboard.dart';
import 'package:junaid_jafferi/Widget/detailstextfield.dart';
import 'package:junaid_jafferi/Widget/raisedbutton.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class GeneralIstikhara extends StatefulWidget {
  const GeneralIstikhara({Key? key}) : super(key: key);
  static String id = 'general_istikhara';

  @override
  _GeneralIstikharaState createState() => _GeneralIstikharaState();
}

class _GeneralIstikharaState extends State<GeneralIstikhara> {
  final TextEditingController Name = TextEditingController();
  final TextEditingController MName = TextEditingController();
  final TextEditingController CountryName = TextEditingController();
  final TextEditingController CityName = TextEditingController();
  final TextEditingController Email = TextEditingController();
  final TextEditingController Before = TextEditingController();
  final TextEditingController Subject = TextEditingController();
  final TextEditingController Detail = TextEditingController();

  bool _validate1 = false;
  bool _validate2 = false;
  bool _validate3 = false;
  bool _validate4 = false;
  bool _validate5 = false;
  bool _validate6 = false;
  bool _validate7 = false;
  bool _validate8 = false;

  @override
  void dispose() {
    Name.dispose();
    MName.dispose();
    CountryName.dispose();
    CityName.dispose();
    Email.dispose();
    Before.dispose();
    Subject.dispose();
    Detail.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DetailsTextField(
                  hinttextt: 'Full Name',
                  controller: Name,
                  errorText: _validate1 ? 'Name Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Mother Name',
                  controller: MName,
                  errorText:
                      _validate2 ? 'Mother Name Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Country Name',
                  controller: CountryName,
                  errorText:
                      _validate3 ? 'Country Name Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'City Name',
                  controller: CityName,
                  errorText:
                      _validate4 ? 'City Name Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Email',
                  controller: Email,
                  errorText: _validate5 ? 'Email Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Have you done istekhara before ?',
                  controller: Before,
                  errorText: _validate6 ? 'Before Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Subject',
                  controller: Subject,
                  errorText:
                      _validate7 ? 'Subject Can\'t Be Empty' : null,
                ),
                SizedBox(height: 15,),

                DetailsTextField(
                  hinttextt: 'Detail',
                  controller: Detail,
                  errorText: _validate8 ? 'Detail Can\'t Be Empty' : null,
                ),
                SizedBox(
                  height: 25,
                ),
                RaisedBtn(
                  textt: 'SUBMIT',
                  onchanged: () {

                    setState(() {
                      Name.text.isEmpty
                          ? _validate1 = true
                          : _validate1 = false;
                      MName.text.isEmpty
                          ? _validate2 = true
                          : _validate2 = false;

                      CountryName.text.isEmpty
                          ? _validate3 = true
                          : _validate3 = false;

                      CityName.text.isEmpty
                          ? _validate4 = true
                          : _validate4 = false;

                      Email.text.isEmpty
                          ? _validate5 = true
                          : _validate5 = false;

                      Before.text.isEmpty
                          ? _validate6 = true
                          : _validate6 = false;

                      Subject.text.isEmpty
                          ? _validate7 = true
                          : _validate7 = false;

                      Detail.text.isEmpty
                          ? _validate8 = true
                          : _validate8 = false;
                      if(!_validate8)  LaunchWhatsapp();

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

      await launch('$link')
          .then((value) =>
      {
        Name.clear(),
        MName.clear(),
        CountryName.clear(),
        CityName.clear(),
        Email.clear(),
        Before.clear(),
        Subject.clear(),
        Detail.clear(),

      });


  }

  SendData() {
    String test = 'Full Name: ${Name.text.toString().trim()}\n\n'
        'Father Name: ${MName.text.toString().trim()}\n\n'
        'Country Name: ${CountryName.text.toString().trim()}\n\n'
        'City Name: ${CityName.text.toString().trim()}\n\n'
        'Email: ${Email.text.toLowerCase().trim()}\n\n'
        'Istekhara before ?: ${Before.text.toString().trim()}\n\n'
        'Subject: ${Subject.text.toString().trim()}\n\n'
        'Detail: ${Detail.text.toString().trim()}\n\n';

    return test;
  }

}
