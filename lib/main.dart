import 'package:film_saga/detail_page.dart';
import 'package:film_saga/reco_page.dart';
import 'package:film_saga/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FilmSaga());
}
class FilmSaga extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: SplashPage(),

     /* initialRoute: '/',
      routes: {
        '/':(context)=>SplashPage(),
        '/Home':(context)=> HomePage(),
        '/Genre':(context)=> GenrePage(),
        },*/

    );
  }
}