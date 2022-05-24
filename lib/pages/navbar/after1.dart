import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class After1 extends StatefulWidget {
  const After1({Key? key}) : super(key: key);

  @override
  State<After1> createState() => _After1State();
}

class _After1State extends State<After1> {
  List<Text> text1=[Text('StudyBuddy',style:GoogleFonts.raleway(fontSize: 18,fontWeight:FontWeight.w600)),
  Text('Mentorship',style:GoogleFonts.raleway(fontSize: 18,fontWeight:FontWeight.w600))];

  List<Text> text2=[Text('Make friends to study with',style:GoogleFonts.raleway(fontSize: 14,fontWeight:FontWeight.w400)),
    Text('Get into a mentorship \n program',style:GoogleFonts.raleway(fontSize: 14,fontWeight:FontWeight.w400))];


  List<Color> color=[Color(0xffD9C7E7),Color(0xffFF9A62)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Row(
        children: [
        CircleAvatar(child: Text('T',
          style: GoogleFonts.raleway(color: Colors.white, fontSize: 18),),
        backgroundColor: Color(0xffD19700),),
      SizedBox(width: 10,),
      Text('Good day Tola,',
        style: GoogleFonts.raleway(fontSize: 18, fontWeight: FontWeight.w500),),
      Spacer(),
      SvgPicture.asset('assets/images/notif.svg'),
      ],
    ),
    SizedBox(height: 10,),
    Text('Here some of the ways you can find help \n to grow in your studies',
    style: GoogleFonts.raleway(fontSize: 14,fontWeight: FontWeight.w400),),
            SizedBox(height: 20,),
    Container(
      height: 360,
      child: ListView.builder(itemCount:2,itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
           Navigator.pushNamed(context, '/14');
          },
          child: Container(padding:EdgeInsets.only(bottom: 20),
            height: 180,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              color: color[index],
              child: Container(
                padding: EdgeInsets.only(left: 9,top: 35,right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        (text1[index]),
                        SizedBox(height: 8,),
                        (text2[index]),

                      ],
                    ),
                    Spacer(),
                    SvgPicture.asset('assets/images/music.svg'),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ),),
        );

      }),
    )

  ]

  ,

  )

  ,

  )

  ,

  );
}}
