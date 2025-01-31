import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AppData.dart';

class DetailPage extends StatelessWidget {
  List<Map<String, dynamic>> SelectedMap;
  int selectedIndex;
  DetailPage({required this.selectedIndex,required this.SelectedMap});

  bool story = false;
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xff1F1F29),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 210,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(SelectedMap[selectedIndex]['banner']),
                      fit: BoxFit.cover),
                ),
              ),
              Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 210,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 10,
                                bottom: 3,
                                child: Text(
                                  SelectedMap[selectedIndex]['audio'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                bottom: 3,
                                child: Text(
                                  SelectedMap[selectedIndex]['duration'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 125,
                          width: double.infinity,
                          padding:
                              EdgeInsets.only(top: 20, right: 15, left: 15),
                          decoration: BoxDecoration(
                              color: Color(0xff1F1F29),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, -7),
                                    color: Colors.black,
                                    blurRadius: 30,
                                    spreadRadius: 0)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 8),
                                    decoration: BoxDecoration(
                                        //color: Color(0xff515053),
                                        //color: Color(0xff1F1F29),
                                        color: Color(0xff312F35),
                                        borderRadius: BorderRadius.circular(11)),
                                    child: Text(
                                      SelectedMap[selectedIndex]['age'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(width: 12,),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 8),
                                    decoration: BoxDecoration(
                                        //color: Color(0xff515053),
                                        //color: Color(0xff1F1F29),
                                        color: Color(0xff312F35),
                                        borderRadius: BorderRadius.circular(11)),
                                    child: Text(
                                      SelectedMap[selectedIndex]['genre'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Poppins",
                                          fontSize: 14,
                                          color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(width: 12,),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 13, vertical: 6),
                                    decoration: BoxDecoration(
                                        //color: Color(0xff515053),
                                        //color: Color(0xff1F1F29),
                                        color: Color(0xff312F35),
                                        borderRadius: BorderRadius.circular(11)),
                                    child: Row(
                                      children: [
                                        Icon(Icons.star_rounded,color: Colors.yellow,size: 26,),
                                        SizedBox(width: 3,),
                                        Text(
                                          SelectedMap[selectedIndex]['rating'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Poppins",
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 2,),
                              Text(
                                SelectedMap[selectedIndex]['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "PoppinsBold",
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
          
                        ///Story Container
          
                        StatefulBuilder(
                          builder: (_, ss) {
                            return Container(
                              width: double.infinity,
                              padding:
                              EdgeInsets.only(top: 0, right: 15, left: 15),
                              decoration: BoxDecoration(
                                color: Color(0xff1F1F29),
                              ),
                              child: Column(
                                children: [
                                  if (story == false)
                                    Text(
                                      SelectedMap[selectedIndex]['story'],
                                      textAlign: TextAlign.justify,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 4,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: Colors.white),
                                    ),
                                  if (story == true)
                                    Text(
                                      SelectedMap[selectedIndex]['story'],
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          color: Colors.white),
                                    ),
                                  if (story == false)
                                    InkWell(
                                        onTap: () {
                                          story = true;
                                          ss(() {});
                                        },
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'Show more',
                                            style: TextStyle(
                                                fontSize: 12, color: Color(0xffC2080B),
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.bold,),
                                          ),
                                        )),
                                  if (story == true)
                                    InkWell(
                                        onTap: () {
                                          story = false;
                                          ss(() {});
                                        },
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'Show less',
                                            style: TextStyle(
                                                fontSize: 12, color: Color(0xffC2080B),
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold,),
                                          ),
                                        )),
                                ],
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: double.infinity,
                          padding:
                          EdgeInsets.only(top: 5, right: 15, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(width: 12,),
                              Container(
                                width: 195,
                                height: 52,
                                decoration: BoxDecoration(
                                    color: Color(0xff312F35),
                                    borderRadius: BorderRadius.circular(11)),
          
                                ///Streaming OTT Platform
          
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Watch on",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Poppins",
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                    if(SelectedMap[selectedIndex]['stream1']=='hotstar')
                                    Image.asset('asset/image/hotstar.png',height:32,width:32,fit: BoxFit.cover,),
                                    if(SelectedMap[selectedIndex]['stream1']=='netflix')
                                    Image.asset('asset/image/netflix.png',height:40,width:40,fit: BoxFit.cover,),
                                    if(SelectedMap[selectedIndex]['stream1']=='prime')
                                    Image.asset('asset/image/prime-video.png',height:30,width:30,fit: BoxFit.cover,),
                                    if(SelectedMap[selectedIndex]['stream2']=='hotstar')
                                      Image.asset('asset/image/hotstar.png',height:32,width:32,fit: BoxFit.cover,),
                                    if(SelectedMap[selectedIndex]['stream2']=='netflix')
                                      Image.asset('asset/image/netflix.png',height:40,width:40,fit: BoxFit.cover,),
                                    if(SelectedMap[selectedIndex]['stream2']=='prime')
                                      Image.asset('asset/image/prime-video.png',height:30,width:30,fit: BoxFit.cover,),
                                  ],
                                ),
                              ),
                              SizedBox(height: 12,),
                              Text(
                                "Actors",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Poppins",
                                    fontSize: 17,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 12,),
                              Container(
                                height: 127,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: SelectedMap[selectedIndex]["actors"].length,
                                    itemBuilder: (_,index){
                                      return Container(
                                        width: 100,
                                        margin: EdgeInsets.only(right: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 95,
                                              width: 95,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(image: AssetImage(SelectedMap[selectedIndex]['actors'][index]['pic']),fit: BoxFit.cover),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                            ),
                                            Text(SelectedMap[selectedIndex]['actors'][index]['name'],overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontFamily: 'Poppins',color: Colors.white,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                      );
                                    }),
                              ),
                              SizedBox(height: 10,)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

              ///Back Button

              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle
                    ),
                    child: Icon(Icons.arrow_back_rounded,color: Colors.white,size: 27,)),
              )
            ],
          ),
        ),
      );
}
