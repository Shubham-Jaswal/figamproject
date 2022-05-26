import 'package:figamproject/pages/StudyBuddy/mappage.dart';
import 'package:figamproject/pages/StudyBuddy/paytutor.dart';
import 'package:figamproject/pages/StudyBuddy/profile.dart';
import 'package:figamproject/pages/StudyBuddy/sblocation1.dart';
import 'package:figamproject/pages/navbar/account.dart';
import 'package:figamproject/pages/navbar/chat.dart';
import 'package:figamproject/pages/navbar/navbar.dart';
import 'package:figamproject/pages/navbar/after1.dart';
import 'package:figamproject/pages/choosemode.dart';
import 'package:figamproject/pages/firstpage.dart';
import 'package:figamproject/pages/fourthpage.dart';
import 'package:figamproject/pages/genderselect.dart';
import 'package:figamproject/pages/StudyBuddy/sblocation.dart';
import 'package:figamproject/pages/navbar/search.dart';
import 'package:figamproject/pages/privacypage.dart';
import 'package:figamproject/pages/secondpage.dart';
import 'package:figamproject/pages/thirdpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //initialRoute: '/17',
    routes: {
      '/': (context) => const Firstpage(),
      '/2': (context) => const Seconpage(),
      '/3': (context) => const Thirdpage(),
      '/4': (context) => const Fourthpage(),
      '/5': (context) => const Genderselect(),
      '/6': (context) => const Choosepage(),
      '/7': (context) => const Privacypage(),
      '/8': (context) => const After1(),
      '/9': (context) => const Navbar(),
      '/10': (context) => const Navbar(),
      '/11': (context) => const Chat(),
      '/12': (context) => const Search(),
      '/13': (context) => const Account(),
      '/14': (context) => const SBlocation(),
      '/15': (context) => const SBlocation1(),
      '/16': (context) => const Mappage(),
      '/17': (context) => const Profile(),
      '/18': (context) => const Paytutor(),
    },
  ));
}
