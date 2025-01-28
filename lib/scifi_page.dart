import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AppData.dart';
import 'detail_page.dart';

class ScifiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color(0xff1F1F29),
    appBar: AppBar(
        backgroundColor: Color(0xff1F1F29),
        foregroundColor: Colors.white,
        surfaceTintColor: Color(0xff1F1F29),
        title: Text(
          "Sci-Fi",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              fontSize: 18,
              color: Colors.white),
        )
    ),
    body: Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: MediaQuery.removePadding(
        context: context,
        removeTop:true,
        child: GridView.builder(
            itemCount: AppData.ScifiData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 1.75,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14
            ),
            itemBuilder: (_, index) {
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(SelectedMap:AppData.ScifiData,selectedIndex:index)));
                },
                child: Container(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 220,
                        width: 152,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(AppData
                                    .ScifiData[index]['image']),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        AppData.ScifiData[index]['name'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 3),
                      if(AppData.ScifiData[index]['star']==3)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                          ],
                        ),
                      if(AppData.ScifiData[index]['star']==3.5)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),

                            Icon(
                              Icons.star_half_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                          ],
                        ),
                      if(AppData.ScifiData[index]['star']==4)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                          ],
                        ),
                      if(AppData.ScifiData[index]['star']==4.5)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_half_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                          ],
                        ),
                      if(AppData.ScifiData[index]['star']==5)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Colors.yellow,
                              size: 23,
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              );
            }),
      ),
    ),
  );
}
