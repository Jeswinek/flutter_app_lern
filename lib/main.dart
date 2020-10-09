import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:flutter/services.dart';
import 'curve.dart';
//import 'energy.dart';
import 'baseHome.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I will learn',
      theme: ThemeData(
        //canvasColor: Colors.transparent,
        primaryColor: Color(0xFF80E1D1),
        hintColor: Color(0xFFC0F0E8),),
        home: Scaffold(
        body: Center(
          child: Container(
        constraints: BoxConstraints.expand(),
    decoration: BoxDecoration(
    // image: DecorationImage(
    // image: AssetImage('image/Logoo.jpg'),
    // fit: BoxFit.cover)
    ),
      child:Homescreen(),
    //   Stack(children:[ CurvedShape(),
    //     Home(),
    // ]
    // ),
    ),
    ),
    ),
    );

  }
}
