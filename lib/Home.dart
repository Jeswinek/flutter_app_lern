import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_lern/signuppage.dart';
import 'signuppage.dart';
import 'loginpage.dart';
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    @override
  Widget build(BuildContext context) {
    Color primary = Theme.of(context).primaryColor;
    Color stst = Colors.red;
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(top:250,left:10,right:10),
          //child: logo(),
        ),
        Padding(
          child: Container(
            child: button('LOGIN', Colors.green, Colors.white,
              Colors.green, 1.0,),
            width: MediaQuery.of(context).size.width,
            height: 65,
          ),
          padding: EdgeInsets.only(top: 80, left: 20, right: 20),
        ),
        Padding(
          child: Container(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.lightGreen, width: 2.5)),
              color: Colors.transparent,
              textColor: Colors.green,
              padding: EdgeInsets.all(8.0),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    SignupScreen()),);
              },
              child: Text( 'Create New',
                style: TextStyle(
                  fontSize: 27.0,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            height: 60,
          ),
          padding: EdgeInsets.all(20),
        ),
        // Padding(
        //   padding: EdgeInsets.all(20),
        //   child: new InkWell(
        //     onTap: () => print('hello'),
        //     child: new Container(
        //       //width: 100.0,
        //       height: 60.0,
        //       decoration: new BoxDecoration(
        //         color: Colors.blueAccent,
        //         border: new Border.all(color: Colors.green, width: 2.0),
        //         borderRadius: new BorderRadius.circular(10.0),
        //       ),
        //       child: new Center(child: new Text('Click Me', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  // Widget logo() {
  //   return Padding(
  //     padding: EdgeInsets.only(
  //         top: MediaQuery.of(context).size.height * 0.03, right: 40),
  //     child: Container(
  //     //   width: MediaQuery.of(context).size.width,
  //     //   height: 220,
  //     //   child: Stack(
  //     //     children: <Widget>[
  //     //       Positioned(
  //     //         child: Container(
  //     //           alignment: Alignment.centerLeft,
  //     //           height: 162,
  //     //           child: Align(
  //     //             child: Text(
  //     //               "Smart",
  //     //               style: TextStyle(
  //     //                 fontSize: 45,
  //     //                 fontWeight: FontWeight.bold,
  //     //                 color: Colors.green,
  //     //               ),
  //     //             ),
  //     //           ),
  //     //         ),
  //     //       ),
  //     //       Positioned(
  //     //         child: Align(
  //     //           child: Container(
  //     //             padding: EdgeInsets.only(top: 40, left: 65),
  //     //             width: 190,
  //     //             child: Text(
  //     //               "HOME",
  //     //               style: TextStyle(
  //     //                 fontSize: 40,
  //     //                 fontWeight: FontWeight.bold,
  //     //                 color: Colors.white,
  //     //               ),
  //     //             ),
  //     //           ),
  //     //           alignment: Alignment.center,
  //     //         ),
  //     //       ),
  //     //     ],
  //     //   ),
  //     // ),
  //
  //   width: MediaQuery.of(context).size.width / 2.5,
  //   height: MediaQuery.of(context).size.width / 2.5,
  //   padding: const EdgeInsets.only(top: 50),
  //   decoration: BoxDecoration(
  //   shape: BoxShape.circle,
  //   color: Colors.white,
  //   // image: DecorationImage(
  //   //   image: AssetImage('image/Logoo.jpg'),
  //   //   fit: BoxFit.cover,
  //   // ),
  //   ),
  //       // child: logoo(),
  //     ),
  //   );
  // }

  Widget button(String text, Color fillColor, Color textColor,
      Color borderColor, double size,) {
    return FlatButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: borderColor, width: size)),
      color: fillColor,
      textColor: textColor,
      padding: EdgeInsets.all(8.0),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>
            LoginScreen()),);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 27.0,
        ),
      ),
    );
  }
}

// class logoo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     AssetImage logoImage = AssetImage('image/Logoo.jpg');
//     Image image = Image(image: logoImage,width: 50,height: 50);
//     return Container(
//       child: image,
//     );

// return Container();


