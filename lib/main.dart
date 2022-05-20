import 'package:figamproject/pages/choosemode.dart';
import 'package:figamproject/pages/firstpage.dart';
import 'package:figamproject/pages/fourthpage.dart';
import 'package:figamproject/pages/genderselect.dart';
import 'package:figamproject/pages/privacypage.dart';
import 'package:figamproject/pages/secondpage.dart';
import 'package:figamproject/pages/thirdpage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
   // initialRoute: '/2',
    routes: {
      '/': (context) => const Firstpage(),
      '/2': (context) => const Seconpage(),
      '/3': (context) => const Thirdpage(),
      '/4': (context) => const Fourthpage(),
      '/5': (context) => const Genderselect(),
      '/6': (context) => const Choosepage(),
      '/7': (context) => const Privacypage(),
    },
  ));
}