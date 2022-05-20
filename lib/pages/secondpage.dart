import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Seconpage extends StatefulWidget {
  const Seconpage({Key? key}) : super(key: key);

  @override
  State<Seconpage> createState() => _SeconpageState();
}

class _SeconpageState extends State<Seconpage> {
 Color changecolor=Color(0xffFFFFFF).withOpacity(0.3);
 Color textchangecolor= Color(0xffEAA800);
 bool isSelected=false;
 bool isempty=false;
 String errortext=('ok');
 TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      body: Container(
        height: MediaQuery.of(context).size.height,

        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/images/leftarrow.svg'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Whats your Student ID?',
              style: GoogleFonts.raleway(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'We protect our community by making\nsure everyone on StudyWith is a student. ',
              style: GoogleFonts.raleway(fontSize: 14),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              child: TextField(controller: userNameController
                ,onTap: () {
                setState((){
                  changecolor=isSelected?Color(0xffFFFFFF).withOpacity(0.3):Colors.black;
                  textchangecolor=isSelected? Color(0xffEAA800):Colors.white;
               //   errortext:isempty?(''):('Please');

                });
              },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 5, top: 5),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: ('Enter your student ID'),
                  //hintStyle: TextStyle(color: Colors.red),
               //   errorText: (''),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                ),
              ),
              /*decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.black,
                    blurRadius:25 ,
                    offset: const Offset(0, 5),
                  )]
                ),*/
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Already h'
                  'ave an account?',
                  style: GoogleFonts.raleway(fontSize: 13),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  'Sign In',
                  style: GoogleFonts.raleway(
                      fontSize: 13, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Spacer(),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'/3');
                    },
                    child: Text('Next',),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: Size(300, 60),
                      shape: StadiumBorder(),
                      primary:changecolor,
                      onPrimary: textchangecolor
                    ),
                  )
                ],
              ),
            SizedBox(height: 30,)

          ],
        ),
      ),
    );
  }
}
