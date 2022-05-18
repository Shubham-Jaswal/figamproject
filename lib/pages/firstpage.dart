import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class Firstpage extends StatefulWidget {

  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode (SystemUiMode.manual, overlays: []);
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      body: Stack(
        children: [Container(
          padding: EdgeInsets.only(left:110),
          child: SvgPicture.asset('assets/images/Blob.svg'),
            ),
        Container(
          padding: EdgeInsets.only(left: 113,top: 70),
          child: SvgPicture.asset('assets/images/Vector.svg'),
        ),
        Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/1.7,left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welocme to',style: TextStyle(fontSize: 15),),
              Text('Study With',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(

                      children: [
                        ElevatedButton(
                          onPressed: (){},
                          child: Text('Create an Account'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            fixedSize: Size(250,60),
                            shape: StadiumBorder(),
                          ),
                        ),
                        SizedBox(height: 30,),
                        ElevatedButton(
                          onPressed: (){},
                          child: Text('Log in'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow[700],
                            fixedSize: Size(300,60),
                            shape: StadiumBorder(),
                            side: BorderSide(width: 1,color: Colors.black),
                            elevation: 0

                          )
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )],

      ),
    );


  }
}
