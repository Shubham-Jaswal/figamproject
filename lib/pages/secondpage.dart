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
  Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
    return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode (SystemUiMode.manual, overlays: []);
    return Scaffold(
      backgroundColor: Colors.yellow[700],
        body: Container(
          padding: EdgeInsets.only(top: 40,left: 30,right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset('assets/images/leftarrow.svg'),
              SizedBox(height: 20,),
              Text('Whats your Student ID?',style: GoogleFonts.raleway(fontSize: 20,fontWeight: FontWeight.w500),),
              SizedBox(height: 20,),
              Text('We protect our community by making\nsure everyone on StudyWith is a student. ',
                  style: GoogleFonts.raleway(fontSize: 14),),
              SizedBox(height: 20,),
              Container(height: 50,

                child: TextField(decoration: InputDecoration(contentPadding: EdgeInsets.only(left: 10,right: 5,
                top: 5),fillColor: Colors.white,filled: true,
                  hintText: ('Enter your student ID'),
                  //hintStyle: TextStyle(color: Colors.red),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
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
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Already h'
                      'ave an account?',style: GoogleFonts.raleway(fontSize: 13),),
                  SizedBox(width: 3,),
                  Text('Sign In',style: GoogleFonts.raleway(fontSize: 13,fontWeight: FontWeight.bold),),
                ],
              ),
              Spacer(),

              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){},
                      child:Text('Next'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(300,60),
                        shape: StadiumBorder(),
                        primary: Color.fromRGBO(255, 255, 255, 0.21),
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
