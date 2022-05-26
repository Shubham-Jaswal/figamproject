import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SBlocation1 extends StatefulWidget {
  const SBlocation1({Key? key}) : super(key: key);

  @override
  State<SBlocation1> createState() => _SBlocation1State();
}

class _SBlocation1State extends State<SBlocation1> {
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

              child: GestureDetector(onTap: (){
                Navigator.pushNamed(context, '/16');
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
                  hintText: ('Eco'),
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
            Container(
              height: 400,
              child: ListView.builder(itemCount:4,itemBuilder: (context,index){
                return Container(
                  padding: EdgeInsets.only(bottom: 5),
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/hat1.svg'),
                     SizedBox(width: 10,),
                     Padding(
                       padding: const EdgeInsets.only(top: 8),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text('Economics',style: GoogleFonts.raleway(fontSize: 14,fontWeight: FontWeight.w600),),
                           SizedBox(height: 7,),
                           Text('Level 1',style: GoogleFonts.raleway(fontSize: 14,fontWeight: FontWeight.w400),),
                         ],
                       ),
                     )
                    ],
                  ),
                );
              }),
            )



          ],
        ),
      ),
    );
  }
}
