import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'dart:math';

const CURVE_HEIGHT = 300.0;
const AVATAR_RADIUS = CURVE_HEIGHT * 0.25;
const AVATAR_DIAMETER = AVATAR_RADIUS * 2;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return new MaterialApp(
      title: 'CurvedShape',
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

//
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: [
          //_buildContent(),
          CurvedShape(),
          // Container(
          //     margin: EdgeInsets.only(top: CURVE_HEIGHT - AVATAR_DIAMETER),
          //     width: double.infinity,
          //     height: AVATAR_DIAMETER,
          //     padding: EdgeInsets.all(8),
          //     // child: Container(
          //     //   decoration: new BoxDecoration(
          //     //     shape: BoxShape.circle,
          //     //     // color: Colors.white,
          //     //   ),
          //     //     child:Image.asset('image/Logo.jpg',
          //     //       width: MediaQuery.of(context).size.width / 2.4,
          //     //     height: MediaQuery.of(context).size.width / 2.8,
          //     //     ),
          //     //   ),
          //     // ),
          // ),
        ],
      ),
    );
  }
}

class CurvedShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(alignment: Alignment.center, children: [
        CustomPaint(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          painter: HeaderCurvedContainer(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 4, top: 60),
              child: Row(
                children: [
                  Text(
                    'SMART',
                    style: TextStyle(
                      fontSize: 35.0,
                      letterSpacing: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
            ),
            Padding(
              // padding: const EdgeInsets.fromLTRB(100, 80, 100,20),
              child: Row(
                children: [
                  Text(
                    'ENERGY',
                    style: TextStyle(
                      fontSize: 35.0,
                      letterSpacing: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.start,
              ),
              padding:
                  EdgeInsets.only(left: MediaQuery.of(context).size.width / 3),
            ),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: MediaQuery.of(context).size.width / 2.3,
                  //padding: const EdgeInsets.only(top:),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    // image: image(),
                    // DecorationImage(
                    //   image: AssetImage('image/Logoo.png'),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
                Padding(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.7,
                      height: MediaQuery.of(context).size.width / 2.7,
                      padding: const EdgeInsets.all(50),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('image/Logoo.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(13, 10, 8, 10)),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  Widget image() {
    var assetsImage = new AssetImage('assets/explore.png');
    var image = new Image(image: assetsImage, width: 48.0, height: 48.0);
    return new Container(child: image);
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.lightGreen;
    Path path = Path()
      ..relativeLineTo(0, 200)
      ..quadraticBezierTo(size.width / 2.3, 300.0, size.width, 160)
      ..relativeLineTo(0, -180)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
