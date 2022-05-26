import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Mappage extends StatefulWidget {
  const Mappage({Key? key}) : super(key: key);

  @override
  State<Mappage> createState() => _MappageState();
}

class _MappageState extends State<Mappage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children:
              //Map
          [Positioned(child:
          Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/maps.jpg',),
              fit:BoxFit.cover
            )
          ),

          )),
          //List
          Positioned(top:390,
              child: Container(
                padding: EdgeInsets.only(top: 10),
                height: 320,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(80),
                  topRight: Radius.circular(80))
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Choose a StudyBuddy',style: GoogleFonts.raleway(fontWeight: FontWeight.w400,fontSize: 14),)
                      ],
                    ),
                    Container(
                      height: 290,
                      child: ListView.builder(itemCount: 5,itemBuilder: (context,index){
                        return Container(
                          padding: EdgeInsets.only(left: 30,
                          right: 30),
                          height: 80,
                          child: Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.grey),
                              SizedBox(width: 10,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Austin'),
                                  Row(
                                    children: [
                                      Text('1hr session'),
                                      Text('--'),
                                      Text('Mon-Fri'),
                                    ],
                                  )
                                
                                ],
                              ),
                              Spacer(),
                              SvgPicture.asset('assets/images/amount.svg')
                            ],
                          ),
                        );
                      }),
                    )

                  ],

                ),


          )),
          //Button
          Positioned(
          top: 620
              ,child: Container(
            padding: EdgeInsets.only(left: 50),
                child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/17');
          },
           child: Text('Book'),
            style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Colors.black,
                onPrimary: Colors.white,
                fixedSize: Size(300, 60)
            ),

          ),
              )),
            //LeftArrow
            Positioned(child: Container(
              padding: EdgeInsets.only(top:40,left: 30),
              child: CircleAvatar(backgroundColor: Colors.white,child: SvgPicture.asset('assets/images/leftarrow.svg')),
            ))
          
          
          
          ],
        ),
      ),
    );
  }
}
