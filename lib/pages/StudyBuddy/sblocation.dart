import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SBlocation extends StatefulWidget {
  const SBlocation({Key? key}) : super(key: key);

  @override
  State<SBlocation> createState() => _SBlocationState();
}

class _SBlocationState extends State<SBlocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 70,left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/images/leftarrow.svg'),
            SizedBox(height: 30,),
            Container(height: 55,width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),

            child: GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, ('/15'));
              },
              child: Card(elevation: 4,
                  child: Container(
                    padding: EdgeInsets.only(left:10),
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Your current location',style: GoogleFonts.raleway(fontWeight: FontWeight.w400,fontSize: 14),),
                ],
              ))),
            ),),
            SizedBox(height: 15,),
            Container(
              height: 55,
              width: 320,
              child: TextField(
              /*  controller: userNameController,
                onTap: () {
                  setState(() {
                    changecolor = isSelected
                        ? Color(0xffFFFFFF).withOpacity(0.3)
                        : Colors.black;
                    textchangecolor =
                    isSelected ? Color(0xffEAA800) : Colors.white;
                    //   errortext:isempty?(''):('Please');
                  });
                },*/
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10, right: 5, top: 5),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: ('What course?'),
                  hintStyle: GoogleFonts.raleway(fontSize: 14,fontWeight: FontWeight.w400),
                  //hintStyle: TextStyle(color: Colors.red),
                  //   errorText: (''),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                ),

              ),
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius:5,
                    offset: const Offset(0, 0.1),
                  )]
                ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('Add the course you want a studybuddy for.',
                  style: GoogleFonts.raleway(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff868686)),)
              ],
            )


          ],
        ),
      ),
    );
  }
}
