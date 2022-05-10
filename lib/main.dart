import 'package:flutter/material.dart';
import 'package:junaid_jafferi/Res/Constant.dart';
import 'package:junaid_jafferi/Screens/Horscope/aquarius_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/aries_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/cancer_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/gemini_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/leo_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/libra_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/pisces_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/sagittarius_detail.dart';
import 'package:junaid_jafferi/Screens/Horscope/taurus_detail.dart';
import 'package:junaid_jafferi/Screens/asma_ul_husna.dart';
import 'package:junaid_jafferi/Screens/home_page.dart';
import 'package:junaid_jafferi/Screens/horscope.dart';
import 'package:junaid_jafferi/Screens/istikhara_service.dart';
import 'package:junaid_jafferi/Screens/lucky_stone.dart';
import 'package:junaid_jafferi/Screens/marriage_istikhara.dart';
import 'package:junaid_jafferi/Screens/rohani_ilag.dart';
import 'package:junaid_jafferi/Screens/spirtual_treatment.dart';
import 'package:junaid_jafferi/Screens/itemlist.dart';
import 'package:junaid_jafferi/Screens/splash_screen.dart';
import 'Screens/Horscope/capricorn_detail.dart';
import 'Screens/Horscope/scorpio_detail.dart';
import 'Screens/Horscope/virgo_detail.dart';
import 'Screens/general_istikhara.dart';
import 'Screens/istikhara_tab.dart';
import 'Screens/about_us.dart';
import 'Screens/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Junaid Jafferi',
      theme: ThemeData(
        fontFamily: 'Alef',
        accentColor: Colors.black,
        backgroundColor: kPrimarycolor,
        scaffoldBackgroundColor: kPrimarycolor,
        appBarTheme: AppBarTheme(
          color: kPrimarycolor,
        ),
        primarySwatch: Colors.blue,
      ),
      initialRoute: Splash_Screen.id,
      routes: <String, WidgetBuilder>{
        Splash_Screen.id: (context) => Splash_Screen(),
        HomePage.id: (context) => HomePage(),
        ItemList.id: (context) => ItemList(),
        Dashboard.id: (context) => Dashboard(),
        AsmaulHusna.id: (context) => AsmaulHusna(),
        Spirtual_Treatment.id: (context) => Spirtual_Treatment(),
        RohainIlag.id: (context) => RohainIlag(),
        Istikhara_Service.id: (context) => Istikhara_Service(),
        Istikhara_Tab.id: (context) => Istikhara_Tab(),
        AboutUS.id: (context) => AboutUS(),
        GeneralIstikhara.id: (context) => GeneralIstikhara(),
        MarriageIstikhara.id: (context) => MarriageIstikhara(),
        Horscope.id: (context) => Horscope(),
        Aries_Detail.id: (context) => Aries_Detail(),
        Taurus_Detail.id: (context) => Taurus_Detail(),
        Gemini_Detail.id: (context) => Gemini_Detail(),
        Cancer_Detail.id: (context) => Cancer_Detail(),
        Leo_Detail.id: (context) => Leo_Detail(),
        Virgo_Detail.id: (context) => Virgo_Detail(),
        Libra_Detail.id: (context) => Libra_Detail(),
        Scorpio_Detail.id: (context) => Scorpio_Detail(),
        Sagittarius_Detail.id: (context) => Sagittarius_Detail(),
        Capricorn_Detail.id: (context) => Capricorn_Detail(),
        Aquarius_Detail.id: (context) => Aquarius_Detail(),
        Pisces_Detail.id: (context) => Pisces_Detail(),
        LuckyStone.id: (context) => LuckyStone(),
      },
    );
  }
}
