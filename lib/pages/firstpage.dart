import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,

          body: Container(

            padding: EdgeInsets.only(top: 300,left: 30,right: 30),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text('Welocme to'),

            Text('Study With'),
            SizedBox(height: 30,),



            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: ElevatedButton(onPressed: (){},
                      child:
                  Text('Create an Account'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    fixedSize: Size(250,60),
                    shape: StadiumBorder()
                  ),),

                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: ElevatedButton(onPressed: (){},
                    child:
                    Text('Log in',style: TextStyle(),),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(250,60),
                        shape: StadiumBorder(),
                    ),),

                ),
              ],
            ),
          ],
        ),
    ),
    );


  }
}
