import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 int _paymentselected=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FractionallySizedBox(
            child: Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(color: Colors.yellow),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Austin J',
                    style: GoogleFonts.raleway(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Available for 1hr session',
                    style: GoogleFonts.raleway(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Monday-Friday with 1PM-2PM',
                    style: GoogleFonts.raleway(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            child: Container(
              padding: EdgeInsets.only(left: 30, top: 40),
              height: 510,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'A little bit about me.',
                    style: GoogleFonts.raleway(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Current major in Economic but sometimes I do like to take course in design and interactions.',
                    style: GoogleFonts.raleway(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Study group',
                    style: GoogleFonts.raleway(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'This comprises of different student all together.\n You can apply and pay for subscription after our \n session if you are interested.',
                        style: GoogleFonts.raleway(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Apply',
                        style: GoogleFonts.raleway(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.yellow),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Session prices.',
                    style: GoogleFonts.raleway(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Radio(value: 1, groupValue: _paymentselected, onChanged: (value){
                         _paymentselected=1;
                         setState((){});
                       },
                       activeColor: Colors.yellow,
                       ),
                        Text('Video chat'),
                        Spacer(),
                        SvgPicture.asset('assets/images/amount1.svg'),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(value: 2, groupValue: _paymentselected, onChanged: (value){
                          _paymentselected=2;
                          setState((){});
                        },
                          activeColor: Colors.yellow,
                        ),
                        Text('In-person'),
                        Spacer(),
                        SvgPicture.asset('assets/images/amount1.svg'),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Text(
                      'When your payment is complete, Austin J will connect \n with you via in-app chat before study session begins.',
                      style: GoogleFonts.raleway(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                      child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white,
                      onPrimary: Colors.black,
                      side: BorderSide(width: 1,color: Colors.black),
                      shape: StadiumBorder(),
                      fixedSize: Size(350, 60)),
                        onPressed: (){
                        Navigator.pushNamed(context, '/18');
                        }, child: Text('Pay',style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 14),),)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
