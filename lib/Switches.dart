import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Switches extends StatefulWidget {
  @override
  _SwitchesState createState() => _SwitchesState();
}

class _SwitchesState extends State<Switches> {
  List<Color> _colors = [
    Colors.lightGreen[700],
    Colors.lightGreen[900],
  ];
  int _currentIndex = 0;
  int _currentIndexOne = 0;
  int _currentIndexTwo = 0;


  bool switchControl = false;
  var textHolder = 'Switch is OFF';
  var Switch_one = 'ON';
  var Switch_Two = 'ON';
  var Switch_Three = 'ON';
  bool Switch_one_control = false;
  bool Switch_Two_control = false;
  bool Switch_Three_control = false;

  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
        textHolder = 'Switch is ON';
        Switch_one_control = false;
        Switch_Two_control = false;
        Switch_Three_control = false;
        SwitchOne();
        SwitchTwo();
        SwitchThree();
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.

    }
    else {
      setState(() {
        switchControl = false;
        textHolder = 'Switch is OFF';
        Switch_one_control = true;
        Switch_Two_control = true;
        Switch_Three_control = true;
        SwitchOne();
        SwitchTwo();
        SwitchThree();
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }
  void SwitchTwo() {
    if (Switch_Two_control == false) {
      setState(() {
        Switch_Two_control = true;
        Switch_Two = 'ON';
        _currentIndexOne = 1;
      });
      print('ON');
      // Put your code here which you want to execute on Switch ON event.

    }
    else {
      setState(() {
        Switch_Two_control = false;
        Switch_Two = 'OFF';
        _currentIndexOne = 0;
      });
      print('OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }
  void SwitchThree() {
    if (Switch_Three_control == false) {
      setState(() {
        Switch_Three_control = true;
        Switch_Three = 'ON';
        _currentIndexTwo = 1;
      });
      print('ON');
      // Put your code here which you want to execute on Switch ON event.

    }
    else {
      setState(() {
        Switch_Three_control = false;
        Switch_Three = 'OFF';
        _currentIndexTwo = 0;
      }
      );
      print('OFF');
      // Put your code here which you want to execute on Switch OFF event.

    }
  }
  void SwitchOne() {
    if (Switch_one_control == false) {
      setState(() {
        Switch_one_control = true;
        Switch_one = 'ON';
        _currentIndex = 1;
      });
      print('ON');
      // Put your code here which you want to execute on Switch ON event.

    }
    else {
      setState(() {
        Switch_one_control = false;
        Switch_one = 'OFF';
        _currentIndex = 0;
      });
      print('OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Switches'),
        ),
        body: Container(
          child: Column(
            children: [
              MasterSwitch(),
             Room1(),
            ],
          ),
        ),
      ),
    );
  }

  Widget MasterSwitch() {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height / 6.5,
      margin: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        color: Colors.greenAccent[400],

        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.0),
                topRight: Radius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 8, left: 10, bottom: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      child:
                      Text(
                        'Master Switch',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Broadway",
                        ),
                      ),
                      padding: EdgeInsets.only(top: 8, right: 50),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ Transform.scale(
                          scale: 1.5,
                          child: Switch(
                            onChanged: toggleSwitch,
                            value: switchControl,
                            activeColor: Colors.blue,
                            activeTrackColor: Colors.green,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                          )
                      ),

                        Text('$textHolder', style: TextStyle(fontSize: 18),)

                      ],),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget Room1() {
    return Container(
      margin: EdgeInsets.all(10),
    height: 200,
    child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0))),
    color: Colors.greenAccent[400],
    child : Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children:[
      Padding(
    padding:EdgeInsets.only(left: 20,top :8,bottom:10),
    child:Text('Room1',
    style : TextStyle(
      fontSize: 30,fontWeight: FontWeight.bold,
    ),
    ),
      ),
    Row(
      children: [
    Padding(
    padding: EdgeInsets.only( top : 10,left: 30.0, right: 0.0),
      child: GestureDetector(
        onTap: () => SwitchOne(),
        child: ClipOval(
          child: Container(
            color: _colors[_currentIndex],
            height: 90.0, // height of the button
            width: 90.0, // width of the button
            child: Center(child: Text('$Switch_one')),
          ),
        ),
      ),
    ),
        Padding(
          padding: EdgeInsets.only(top :10,left: 30.0, right: 0.0),
          child: GestureDetector(
            onTap: () => SwitchTwo(),
            child: ClipOval(
              child: Container(
                color: _colors[_currentIndexOne],
                height: 90.0, // height of the button
                width: 90.0, // width of the button
                child: Center(child: Text('$Switch_Two')),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only( top :10,left: 30.0, right: 0.0),
          child: GestureDetector(
            onTap: () => SwitchThree(),
            child: ClipOval(
              child: Container(
                color: _colors[_currentIndexTwo],
                height: 90.0, // hei
                // ght of the button
                width: 90.0, // width of the button
                child: Center(child: Text('$Switch_Three')),
              ),
            ),
          ),
        ),
        ],),
    ],),),
    );
  }
}