import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({Key? key}) : super(key: key);

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
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
                      value: 0.30,
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
                'What’s your full name?',
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w500, fontSize: 24),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Add the name you are called in school. ',
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.w400, fontSize: 14),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, right: 5, top: 5),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: ('Enter your full name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/4');
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
        ));
  }
}
