import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Choosepage extends StatefulWidget {
  const Choosepage({Key? key}) : super(key: key);

  @override
  State<Choosepage> createState() => _ChoosepageState();
}

class _ChoosepageState extends State<Choosepage> {
  int _groupvalue = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(left: 30, top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose a mode to get \n started',
              style: GoogleFonts.raleway(
                  fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'StudyWith’s for making all kinds of connections! \n To help you excel in you studies and also learn to \n create value.',
              style: GoogleFonts.raleway(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 12),
              width: 324,
              height: 109,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Growing',
                        style: GoogleFonts.raleway(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'I need help to excel in my studies',
                        style: GoogleFonts.raleway(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Radio(
                      value: 1,
                      groupValue: _groupvalue,
                      onChanged: (value) {
                        _groupvalue = 1;
                        setState(() {});
                      })
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 12),
              width: 324,
              height: 109,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Elite',
                        style: GoogleFonts.raleway(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'I want to help other student to excel',
                        style: GoogleFonts.raleway(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Radio(
                      value: 2,
                      groupValue: _groupvalue,
                      onChanged: (value) {
                        _groupvalue = 2;
                        setState(() {});
                      })
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/7');
                    },
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 60),
                      shape: StadiumBorder(),
                      primary: Color(0xffFFFFFF).withOpacity(0.3),
                      onPrimary: Color(0xffEAA800),
                      elevation: 0,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
