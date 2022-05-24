import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class Privacypage extends StatefulWidget {
  const Privacypage({Key? key}) : super(key: key);

  @override
  State<Privacypage> createState() => _PrivacypageState();
}

class _PrivacypageState extends State<Privacypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy Notice',
              style: GoogleFonts.raleway(
                  fontSize: 24, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 12, top: 12),
              width: 330,
              height: 144,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF).withOpacity(0.3),
              ),
              child: Text(
                'I agree to the terms and conditions of that are provided to me and I choose to follow them, all procedures and no insult and back stab of any kind.',
                style: GoogleFonts.raleway(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 60, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {

                      Navigator.pushNamed(context, '/9');
                    },
                    child: Text('I agree'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 60),
                      shape: StadiumBorder(),
                      primary: Colors.black,
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
