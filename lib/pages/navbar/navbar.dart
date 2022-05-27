import 'package:figamproject/pages/navbar/account.dart';
import 'package:figamproject/pages/navbar/after1.dart';
import 'package:figamproject/pages/navbar/search.dart';
import 'package:figamproject/pages/thirdpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  List pages = [
    After1(),
    Search(),
    Chat(),
    Account(),
  ];
  int currentindex = 0;

  void ontap(int index) {
    setState(() {
      currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
         //showSelectedLabels: true,
        currentIndex: currentindex,
        unselectedItemColor: Colors.grey,
         selectedItemColor: Colors.black,
         unselectedFontSize: 10,
type: BottomNavigationBarType.fixed,
         showUnselectedLabels: true,
         onTap: ontap,
         items: [
           BottomNavigationBarItem(
             label:'Discover',icon:Icon(Icons.directions)
           ),
           BottomNavigationBarItem(
               label:'Resources',icon:Icon(Icons.search),
           ),
           BottomNavigationBarItem(
               label:'Chat',icon:Icon(Icons.chat)
           ),
           BottomNavigationBarItem(
               label:'Account',icon:Icon(Icons.person)
           ),
         ],

      ),
    );
  }
}
