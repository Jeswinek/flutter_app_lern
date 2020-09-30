import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_lern/register.dart';
import 'login.dart';
import 'register.dart';

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
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: logo(),
        ),
        Padding(
          child: Container(
            child: button('LOGIN', Colors.lightGreen, Colors.white,
                Colors.greenAccent, 1.0,),
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
                    signUp()),);
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

  Widget logo() {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.03, right: 40),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 220,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Container(
                alignment: Alignment.centerLeft,
                height: 162,
                child: Align(
                  child: Text(
                    "Smart",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Align(
                child: Container(
                  padding: EdgeInsets.only(top: 40, left: 65),
                  width: 190,
                  child: Text(
                    "HOME",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

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
        loginUser()),);
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
