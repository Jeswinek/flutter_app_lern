import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import'package:flutter/widgets.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:charts_flutter/flutter.dart'as charts;
import 'package:url_launcher/url_launcher.dart';
import 'graph.dart';

class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black38,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Advanced Menu',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(

                color: Colors.blueGrey,
              ),
            ),




            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('User'),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('profile'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.border_color),
              title: Text('Feedback'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      ),
    )
    ;
  }
}

class energy extends StatefulWidget {
  @override
  _energyState createState() => _energyState();
}

class _energyState extends State<energy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        drawer: menu(),
        appBar: GradientAppBar(
          backgroundColorStart: Colors.cyan,
          backgroundColorEnd: Colors.lightGreenAccent,
          centerTitle: true,
          title: Text('Energy Meter',
              style: TextStyle(fontSize:26,fontStyle:FontStyle.italic,fontWeight:FontWeight.bold,color: Colors.black)),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),


        body: Container(

          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.white,Colors.lightGreenAccent,Colors.lightGreenAccent,Colors.white,Colors.cyan,Colors.cyan,Colors.white, Colors.cyan])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )
                ),
                height:120,
                width: 270,
                child:
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 5.0, right: 0.0,bottom: 10),
                      child: GestureDetector(
                        onTap: () => {
                        },
                        child: ClipOval(
                          child:Padding(child: Container(

                            height:     65.0,// height of the button
                            width: 55.0, // width of the button
                            child: Center(child: Text('price')),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              shape: BoxShape.circle,
                              color:  Colors.white70,
                            ),
                          ),
                            padding: EdgeInsets.only(left: 8,right: 8),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10,bottom: 10, left: 5, right:0.0),
                      child: GestureDetector(
                        onTap: () =>
                        {
                        },
                        child: ClipOval(
                          child: Container(
                            height: 65.0, // height of the button
                            width: 55.0, // width of the button
                            child: Center(child: Text('numb')),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              shape: BoxShape.circle,
                              color:  Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10,bottom: 10, left: 5, right:0.0),
                      child: GestureDetector(
                        onTap: () =>
                        {
                        },
                        child: ClipOval(
                          child: Container(

                            height: 65.0, // hei
                            // ght of the button
                            width: 55.0, // width of the button
                            child: Center(child: Text('cost')),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),

                              shape: BoxShape.circle,
                              color:  Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: EdgeInsets.only(top:10,bottom: 10, left: 5, right:0.0),
                      child: GestureDetector(
                        onTap: () =>
                        {
                        },
                        child: ClipOval(
                          child: Container(

                            height: 65.0, // hei
                            // ght of the button
                            width: 55.0, // width of the button
                            child: Center(child: Text('data')),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),

                              shape: BoxShape.circle,
                              color:  Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
               // child: ,
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(1000),
                height: 207,
                width: 450,
                decoration: new BoxDecoration(
                  color: Colors.white60,
                  border: Border.all(
                      color: Colors.black, // set border color
                      width: 3.0), // set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(15.0)), // set rounded corner radius
                  boxShadow: [
                    BoxShadow(blurRadius: 20,
                        color: Colors.white30,
                        offset: Offset(1, 8))],
                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                height: 83,
                width: 180,
                alignment: Alignment.center,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: FlatButton.icon(
                                  icon: Icon(Icons.view_compact_outlined),
                                  label: Text(
                                    "calendar",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  onPressed: () => launch(""),
                                )
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                height: 83,
                width: 238,
                alignment: Alignment.bottomRight,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 2.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: FlatButton.icon(
                                  icon: Icon(Icons.add_to_home_screen),
                                  label: Text(
                                    "Online Payment",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  onPressed: () => launch("https://wss.kseb.in/selfservices/quickpay"),
                                )
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}