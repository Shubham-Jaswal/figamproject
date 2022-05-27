import 'package:figamproject/pages/navbar/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Paymentsuccess extends StatefulWidget {
  const Paymentsuccess({Key? key}) : super(key: key);

  @override
  State<Paymentsuccess> createState() => _PaymentsuccessState();
}

class _PaymentsuccessState extends State<Paymentsuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 30,right: 30),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/tick.svg'),
              SizedBox(height: 15,),
              Text('Payment Successful',style: GoogleFonts.raleway(fontWeight: FontWeight.w500,fontSize: 24),),
              SizedBox(height: 12,),
              Text('You now have access to connect will Austin J or you could wait for him to chat you up.',
                style: GoogleFonts.raleway(fontWeight: FontWeight.w500,fontSize: 16),),
              SizedBox(height: 15,),
              ElevatedButton(style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Colors.black,
                onPrimary: Colors.white,
                fixedSize: Size(300, 60)
              ),onPressed: (){
                Navigator.pushNamed(context,'/10');
              },
                  child: Text('Chat Now',style: GoogleFonts.raleway(fontSize: 14,fontWeight: FontWeight.w600),),

              )
            ],
          ),
        ),
      ),
    );
  }
}
