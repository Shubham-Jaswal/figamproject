import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Paytutor extends StatefulWidget {
  const Paytutor({Key? key}) : super(key: key);

  @override
  State<Paytutor> createState() => _PaytutorState();
}

class _PaytutorState extends State<Paytutor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset : false,
      body: SingleChildScrollView(
        child: Column(
          children: [
           Stack(
             children: [
               Positioned(
                 child: FractionallySizedBox(
                   child: Container(
                     height: 350,
                     width: double.maxFinite,
                     color: Colors.yellow,
                   ),
                 ),
               ),
               Positioned(
                 top: 70,
                   left: 50,

                   child: SvgPicture.asset('assets/images/visa.svg')),
               Positioned(top: 280,left: 30,
                   child: Column(
                 children: [
                   Text(
                     'Study Buddy',
                     style: GoogleFonts.raleway(
                         fontSize: 14, fontWeight: FontWeight.w500),
                   ),
                   SizedBox(height: 6,),
                 Text(
                   'video chat',
                   style: GoogleFonts.raleway(
                       fontSize: 14, fontWeight: FontWeight.w400),)
                 ],
               ),),
               Positioned(top:296,left: 320,child: Text('25 D'))
             ],
           ),
            FractionallySizedBox(
              child: Container(
                padding: EdgeInsets.only(left: 30,top: 30),
                height:360,
                color: Colors.white,
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Card number',
                        style: GoogleFonts.raleway(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                    SizedBox(height: 15,),
                    Container(
                      height: 50,
                      width: 342,
                      child: TextField(
                        //  controller: userNameController,
                        onTap: () {
                          setState(() {
                          });
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10, right: 5, top: 5),
                          fillColor: Colors.grey,
                          filled: true,
                          hintText: ('Enter your card details'),
                          hintStyle:GoogleFonts.raleway(
                              fontSize: 14, fontWeight: FontWeight.w400),
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
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('CVV',
    style: GoogleFonts.raleway(
    fontSize: 14, fontWeight: FontWeight.w500)),
                              SizedBox(height: 15,),
                              Container(
                                height: 50,
                                width: 130,
                                child: TextField(
                                  //  controller: userNameController,
                                  onTap: () {
                                    setState(() {
                                    });
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 10, right: 5, top: 5),
                                    fillColor: Colors.grey,
                                    filled: true,
                                    hintText: ('345'),
                                    hintStyle:GoogleFonts.raleway(
                                        fontSize: 14, fontWeight: FontWeight.w400),
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


                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start
                            ,
                            children: [
                              Text('Expiey Date',
                                  style: GoogleFonts.raleway(
                                      fontSize: 14, fontWeight: FontWeight.w500)),
                              SizedBox(height: 10,),
                              Container(
                                height: 50,
                                width: 130,
                                child: TextField(
                                  //  controller: userNameController,
                                  onTap: () {
                                    setState(() {
                                    });
                                  },
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 10, right: 5, top: 5),
                                    fillColor: Colors.grey,
                                    filled: true,
                                    hintText: ('01/2099'),
                                    hintStyle: GoogleFonts.raleway(
                                        fontSize: 14, fontWeight: FontWeight.w400),
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
                            ],
                          ),


                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 45),
                      child: Text('When your payment is complete, Austin J will connect with you via in-app chat before study session begins.',
                          style: GoogleFonts.raleway(
                              fontSize: 14, fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.only(right: 30),
                        child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white,
                            onPrimary: Colors.black,
                            side: BorderSide(width: 1,color: Colors.black),
                            shape: StadiumBorder(),
                            fixedSize: Size(350, 60)),
                          onPressed: (){
                            Navigator.pushNamed(context, '/19');
                          }, child: Text('Pay',style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 14),),))
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
