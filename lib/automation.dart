import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'register.dart';

class automation extends StatefulWidget {
  @override
  _automationState createState() => _automationState();
}

class _automationState extends State<automation> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () =>Navigator.pop(context),
          ),
          title: Text('home'),
        ),
        body:Column(
          children: [
            _Security(),_plug(),
            _overuse(),
          ],
        )
      ),

    );
  }
  Widget _Security() {
    return Container(
    margin: EdgeInsets.all(10),
      child:  Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
    child: InkWell(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>
    signUp()),);
    },
    child: Column(
    children: <Widget>[
    ClipRRect(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(8.0),
    topRight: Radius.circular(8.0),
    ),
    child: Image.asset('image/intruder.jpg',
    width:MediaQuery.of(context).size.width,
    height: 150,
    fit:BoxFit.fill

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
    child: Column(
      children: [
        Padding(
          child: Container(
            height: 110,
            color: Colors.green,
            child: Row(
              children: [
                Padding(
                  child:
                  Text('Set Your Plug Time',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 30, color: Colors.white,),
                  ),
                  padding: EdgeInsets.only(left: 40, right: 20),
                ),
                Padding(
                  child:
                  Icon(
                    Icons.timer, size: 45,
                  ),
                  padding: EdgeInsets.only(right: 20),
                ),
              ],
            ),
          ),
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
        ),
        Padding(
          child:
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 30,
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(width: 2.0, color: Colors.green),
                bottom: BorderSide(width: 2.0, color: Colors.green),
                right: BorderSide(width: 2.0, color: Colors.green),

              ),
              color: Colors.white,
            ),
            child: Padding(
              child:
              Text('Timer is off',
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
          padding: EdgeInsets.only(left: 10, right: 10),
        ),
      ],
    ),
  );
}
Widget _overuse() {
  return Container(
    height:150,
    margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
    child:  Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
      color: Colors.lightGreen,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>
              signUp()),);
        },
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
              child:Padding(
                child:
              Center(
                child: Text('switch',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,
                      color: Colors.red,fontSize: 40,
                      letterSpacing: 3,fontFamily: "Broadway",
                    )),
              ),
                padding: EdgeInsets.only(top:50),
              ),
            ),
          ],
        ),
      ),
    ),
  );

}


}
