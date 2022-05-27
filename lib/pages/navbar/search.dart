import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Container(
          padding: EdgeInsets.only(top: 50,left: 30),
          height: double.maxFinite,
          width: double.maxFinite,
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.black,
                    filled: true,
                    hintText: ('subjects...'),
                    hintStyle:GoogleFonts.raleway(
                        fontSize: 14, fontWeight: FontWeight.w400),
                    //   errorText: (''),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey,width: 2),),

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
              SizedBox(height: 20,),
              Text('Free courses',style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 14),),
              SizedBox(height: 20,),
              Container(
                height: 250,
                width: double.infinity,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 4,itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                      color: Color(0xff3C1186),
                          gradient: LinearGradient(
                            begin:Alignment.topRight,
                           end: Alignment.bottomLeft,
                           colors: [
                             Colors.purple,
                             Colors.red,
                           ]),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    height: 250,
                    width: 270,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30,top: 30,right: 20),
                          child: Row(
                            children: [
                              CircleAvatar(backgroundColor: Colors.yellow,child: Text('D',style: GoogleFonts.raleway(color: Colors.black),),),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text('Dianne Edwards',style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 10),),
                                  Text('@dianneed',style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 8),),
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.orange
                                ),
                                child: Center(
                                  child: Text('82 min',style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 10)),

                                ),
                              )

                            ],
                          ),

                        ),
                        SizedBox(height: 90,),
                        Container(
                          padding: EdgeInsets.only(left: 15),
                          height: 50,
                            width: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          color: Colors.blue.withOpacity(0.3)
                          ),
                          child:Center(
                            child: Text('Learning how to create simple Swift applications in 8 lessons',
                                style: GoogleFonts.raleway(fontWeight: FontWeight.w500,fontSize: 10,color: Colors.white)),
                          ),
                        )

                      ],
                    )
                  );
                }),
              ),
              SizedBox(height: 30,),
              Text('Free live classes',style: GoogleFonts.raleway(fontWeight: FontWeight.w600,fontSize: 14),),
              SizedBox(height: 30,),
              Container(
                height: 220,
                width: double.infinity,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 4,itemBuilder: (context,index){
                  return Container(
                      margin: EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                          color: Color(0xff3C1186),
                          gradient: LinearGradient(
                              begin:Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.purple,
                                Colors.red,
                              ]),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      height: 220,
                      width: 150,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 30,top: 120,right: 20),
                            child: CircleAvatar(radius: 30,backgroundColor: Colors.yellow,child: Text('D',style: GoogleFonts.raleway(color: Colors.black),),),
                          ),
                        ],
                      )
                  );
                }),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
