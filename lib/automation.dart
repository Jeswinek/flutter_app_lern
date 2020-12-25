import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'signuppage.dart';
import 'Switches.dart';

class automation extends StatefulWidget {
  @override
  _automationState createState() => _automationState();
}

class _automationState extends State<automation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.green[800],
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text('home'),
        ),
        body: Stack(children:[
          Container(
            color: Colors.green[200],),
          Column(children:[
            _Security(),
            _plug(),
            _overuse(),
          ],),
        ],),
      ),
    );
  }

  Widget _Security() {
    return Container(
      color: Colors.lightGreenAccent[400],
      height: 180,
      margin: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignupScreen()),
            );
          },
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('image/intruder.jpg',
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _plug() {
    return Container(
      color: Colors.transparent,
      height: 150,
      margin: EdgeInsets.fromLTRB(10,5, 10,5),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        color: Colors.greenAccent[400],
        child: InkWell(
          onTap: () {
          },
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Padding(
                  child:Row(children:[ Text(
                    'Set Your Plug Timer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "Broadway",
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.alarm_add, size: 50,),
                    )
                  ],
                  ),
                  padding: EdgeInsets.only(top: 45, left: 10, bottom: 3),
                ),
              ),
              Padding(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border(
                      //left: BorderSide(width: 2.0, color: Colors.green),
                      top: BorderSide(width: 2.0, color: Color(0x31cc43)),
                      //right: BorderSide(width: 2.0, color: Colors.green),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    child: Text(
                      'Timer is off',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        wordSpacing: 2,
                        letterSpacing: 1.5,
                      ),
                    ),
                    padding: EdgeInsets.only(top: 4, left: 40),
                  ),
                ),
                padding: EdgeInsets.only(top: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _overuse() {
    return Container(
      height: 140,
      margin: EdgeInsets.fromLTRB(10,10, 10,5),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        color: Colors.greenAccent[400],
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Switches(),),
            );
          },
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: Padding(
                  child: Center(
                    child: Text('Switch',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: Colors.lightGreen[100],
                          fontSize: 40,
                          letterSpacing: 3,
                          fontFamily: "Broadway",
                        )),
                  ),
                  padding: EdgeInsets.only(top: 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}