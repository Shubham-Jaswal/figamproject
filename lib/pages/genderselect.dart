import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Genderselect extends StatefulWidget {
  const Genderselect({Key? key}) : super(key: key);

  @override
  State<Genderselect> createState() => _GenderselectState();
}

class _GenderselectState extends State<Genderselect> {
  int _radioselected = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      body: Container(
        padding: EdgeInsets.only(top: 70, right: 30, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 330,
                  height: 5,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.yellow[800],
                    value:1,
                    valueColor: AlwaysStoppedAnimation(Colors.black),
                    minHeight: 5,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),

            Text(
              'How do you identify?',
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500, fontSize: 24),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                padding: EdgeInsets.only(left: 10),
                width: 400,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text('Girl'),
                    Spacer(),
                    Radio(
                      value: 1,
                      groupValue: _radioselected,
                      onChanged: (value) {
                        _radioselected = 1;
                        print('done');
                        setState(() {});
                      },
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.only(left: 10),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Text('Boy'),
                    Spacer(),
                    Radio(
                      value: 2,
                      groupValue: _radioselected,
                      onChanged: (value) {
                        _radioselected = 2;
                        print('done1');
                        setState(() {});
                      },
                    ),
                  ],
                )),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/6');
                    },
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 60),
                      shape: StadiumBorder(),
                        primary: Color(0xffFFFFFF).withOpacity(0.3),
                        onPrimary: Color(0xffEAA800),
                      elevation: 0
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
