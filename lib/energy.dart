import 'dart:ffi';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import'values.dart';
import 'package:flutter/painting.dart';
import'package:flutter/widgets.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:charts_flutter/flutter.dart'as charts;
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_database/firebase_database.dart';
import 'graph.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
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
              child: Container(
                height: 64,
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 32,
                      backgroundImage:AssetImage('image/Logoo.png'
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('KEERTHY M S'),
                        Text('Choondal'),
                      ],
                    ),
                  ],
                ),
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
  final fb = FirebaseDatabase.instance.reference();
  var retrievedName = "";
  String name = "";
  String Times = "";
  String k = "";
  String Datte = "";
  int Time; //its poornesh created time
  String y = "";
  String p = "";
  String seconds = "";
  var ref;
  String costs = "";
  double unit=180;
  String textHolder = 'Old Sample Text...!!!';
  int bal;
  int rem;
  double readingUnit = 0;
  double priceElectricity = 0;
  double monthlypriceElectricity = 0;

  changeText(String j) {
    setState(() {
      textHolder = j;
    });
  }

  priceCalculation() {
    if (unit >=0 && unit <=50) {
      priceElectricity = unit * 2.90;
    }
    else if (unit >=51 && unit<=100) {
      priceElectricity = unit * 3.70;
    } else if (unit >= 101 && unit<=150) {
      priceElectricity = unit * 4.80;
    }else if (unit >= 151 && unit<=200) {
      priceElectricity = unit * 6.40;
    }else if(unit>=201) {
      priceElectricity = unit * 7.50;
    }
    else print("unit doesnot calculated");
    setState(() {
      costs ="$priceElectricity";
    });

  }
monthlyprice(){
  if (unit >=0 && unit <=50) {
   monthlypriceElectricity = unit * 2.90;
  }
  else if (unit >=51 && unit<=100) {
   monthlypriceElectricity = (50*2.90)+(unit-50)*3.70;
  } else if (unit >= 101 && unit<=150) {
    monthlypriceElectricity = (50*2.90)+(100*3.70)+(unit-100)* 4.80;
  }else if (unit >= 151 && unit<=200) {
   monthlypriceElectricity =  (50*2.90)+(100*3.70)+(150* 4.80)+(unit-150)* 6.40;
  }else if(unit>=201) {
   monthlypriceElectricity =  (50*2.90)+(100*3.70)+(150* 4.80)+(250*6.40)+(unit-250)*7.50;

  }
  else print("unit doesnot calculated");
  setState(() {
    costs ="$monthlypriceElectricity";
  });
}
  samplefunction(){
    final ref=fb.reference().child("");
    DateTime now=DateTime.now();
    print("${now.second}:${now.microsecond}");
    seconds="${now.second}";
    Time = int.parse(seconds);
    rem = Time%5;
    bal=Time-rem;
    Datte="${now.year}${now.month}${now.day}$bal";
    print(Datte);
    ref.child(Datte).once().then((DataSnapshot data){
      setState(() {
        retrievedName=data.value ;
        // cost(retrievedName);
      });
    });
  }

  samplefunction2() {
    final ref = fb.reference().child("");
    DateTime now=DateTime.now();
    print("${now.second}:${now.microsecond}");
    seconds="${now.second}";
    Time = int.parse(seconds);
    rem = Time%5;
    bal=Time-rem;
    print(now.month);
    Datte="yyyy:$bal";
    //  ref=fb.reference().child("")
    ref.child(Datte).set(name);
    y = name;
  }
  samplefunction5() {
    DateTime now=DateTime.now();
    print("${now.second}:${now.microsecond}");
    seconds="${now.second}";
    Time = int.parse(seconds);
    rem = Time%5;
    setState(() {
      bal=Time-rem;
      //  Time=Time-rem;
    });
  }
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

                child: Text('$textHolder ',
                    style: TextStyle(fontSize: 21)),

              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 30.0, right: 30.0,bottom: 10),
                    child: GestureDetector(
                      onTap: () => {
                        {
                          // setState(() {
                          // samplefunction();
                          // k=retrievedName;
                          // changeText();
                          // })
                          samplefunction(),
                          changeText(retrievedName),
                          // samplefunction5()
                        }
                      },
                      child: ClipOval(
                        child:Padding(child: Container(

                          height:     65.0,// height of the button
                          width: 55.0, // width of the button
                          child: Center(child: Text('Units')),
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
                    padding: EdgeInsets.only(top:10,bottom: 10, left: 0, right:30.0),
                    child: GestureDetector(
                      onTap: () =>
                      {
                        //samplefunction(),
                        priceCalculation(),
                        changeText(costs),
                      }
                      ,
                      child: ClipOval(
                        // height of the button
                        child: Container(
                          height: 65.0,
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
                    padding: EdgeInsets.only(top:10,bottom: 10, left: 6, right:30.0),
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
                    padding: EdgeInsets.only(top:10,bottom: 10, left: 5, right:40.0),
                    child: GestureDetector(
                      onTap: () =>
                      {
                        monthlyprice(),
                        changeText(costs),
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
              Container(
                margin: EdgeInsets.all(1),
                padding: EdgeInsets.all(8),
                height: 83,
                width: 438,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: FlatButton.icon(
                                  icon: Icon(Icons.show_chart,size: 48,),
                                  label: Text(
                                    "Graphical Representation",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => HomePag()),
                                    );
                                  },
                                )
                            ),
                          ]
                      ),
                    ),
                  ],

                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(0),
                height: 83,
                width: 250,
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
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: FlatButton.icon(
                                  icon: Icon(Icons.calendar_today),
                                  label: Text(
                                    "calendar",
                                    style: TextStyle(fontSize: 25),
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
  Widget cost(String val){
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 5),
        child: Text(val),
      ),
    );
  }
}