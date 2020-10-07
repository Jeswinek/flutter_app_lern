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
      width: double.infinity,
      // height: CURVE_HEIGHT,
      child:Stack(
          alignment: Alignment.center,
          children: [ CustomPaint(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          painter: HeaderCurvedContainer(),
          ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/4),
                      child:
                      Text('Smart Energy',
                      style:TextStyle(
                        fontSize: 35.0,
                        letterSpacing: 1.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      ),),
                    ],
                  ),
                ),
                    Container(

                     width: MediaQuery.of(context).size.width / 2.4,
                     height: MediaQuery.of(context).size.width / 2.4,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                      color: Colors.white,
                    ),

                child:

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                Container(
                  width: MediaQuery.of(context).size.width / 2.8,
                  height: MediaQuery.of(context).size.width / 2.8,
                  //padding: const EdgeInsets.only(left: 50),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                     // color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('image/Logoo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                // child: Image.asset('image/logo.jpg'),
                ),
                    ],),
                ),],
            ),
    ],
      ),
    );
  }
}

 class HeaderCurvedContainer extends CustomPainter {
@override
   void paint(Canvas canvas, Size size) {
     Paint paint = Paint()..color = Colors.lightGreen;
     Path path = Path()
       ..relativeLineTo(0, 150)
       ..quadraticBezierTo(size.width / 2, 250.0, size.width, 150)
       ..relativeLineTo(0, -150)

       ..close();

     canvas.drawPath(path, paint);
   }

   @override
   bool shouldRepaint(CustomPainter oldDelegate) => false;
 }

