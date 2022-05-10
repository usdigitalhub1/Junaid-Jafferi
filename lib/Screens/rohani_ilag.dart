import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:junaid_jafferi/Drawer/naviigation_drawer.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Utils/rohani_list.dart';
import 'package:junaid_jafferi/Widget/rohani_ilag_widget.dart';

class RohainIlag extends StatefulWidget {
  const RohainIlag({Key? key}) : super(key: key);
  static String  id = 'rohani_ilag ';

  @override
  _RohainIlagState createState() => _RohainIlagState();
}

class _RohainIlagState extends State<RohainIlag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text('Rohani Ilag',style: Textt1.textStyle(Colors.white, 18),),
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
      body: ListView.builder(
          itemCount: RohaniList.list.length,
          itemBuilder: (BuildContext context, int index )
          => buildrohaniilag(context,index)
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
