import 'package:flutter/material.dart';
import 'register.dart';

class energy extends StatefulWidget {
  @override
  _energyState createState() => _energyState();
}

class _energyState extends State<energy> {
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
        body: Stack(
          children:[
          Container(
            color: Colors.green[200],),
          Column(
              children:[
            meter(),
            auto(),
                ],
          ),



      ],

        ),


    ),
    );
  }
  Widget meter() {
    return Container(
      color: Colors.lightGreenAccent[400],
      height: 180,
      width: MediaQuery.of(context).size.width-10,
      margin: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => signUp()),
            );
          },
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                ),

              // Padding(
              //   child: Container(
              //     width: MediaQuery.of(context).size.width,
              //     height: 30,
              //     decoration: BoxDecoration(
              //       border: Border(
              //         //left: BorderSide(width: 2.0, color: Colors.green),
              //         top: BorderSide(width: 2.0, color: Color(0x31cc43)),
              //         //right: BorderSide(width: 2.0, color: Colors.green),
              //       ),
              //       color: Colors.white,
              //     ),
            //       child: Padding(
            //         child: Text(
            //           'date',
            //           style: TextStyle(
            //             fontSize: 15,
            //             fontWeight: FontWeight.bold,
            //             fontStyle: FontStyle.italic,
            //             wordSpacing: 2,
            //             letterSpacing: 1.5,
            //           ),
            //         ),
            //         padding: EdgeInsets.only(top: 4, left: 40),
            //       ),
            //     ),
            //     padding: EdgeInsets.only(top: 10),
            //   ),
            // ],
    ],
        ),


      ),
      ),

    );
  }
  Widget auto() {
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
      padding: EdgeInsets.only(top: 60,left: 40),

    child:Row(children:[ Text(
    'AUTOMATION',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    color: Colors.white,
    fontSize: 30,
    fontFamily: "Broadway",
    ),
    ),
      ],
    ),
      //padding: EdgeInsets.only(top: 45, left: 10, bottom: 3),
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
              '3 bulbs on',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                wordSpacing: 2,
                letterSpacing: 1.5,
              ),
            ),
            padding: EdgeInsets.only(top:4, left: 20),
          ),
        ),
        padding: EdgeInsets.only(top: 16),
      ),
],
        ),

    ),
    ),



    );

  }
}

