import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Switches extends StatefulWidget {
  @override
  _SwitchesState createState() => _SwitchesState();
}

class _SwitchesState extends State<Switches> {
  final fb = FirebaseDatabase.instance.reference();
  List<Color> _colors = [
    Colors.lightGreen[700],
    Colors.lightGreen[900],
    Colors.transparent,
    Colors.tealAccent,
    Colors.black,
  ];

  int _currentIndex = 0;
  int _currentIndexOne = 0;
  int _currentIndexTwo = 0;
  int _currentIndexl1 = 2;
  int _currentIndexlt1 = 3;
  int _currentIndexl2 = 2;
  int _currentIndexlt2 = 3;
  int _currentIndexl3 = 2;
  int _currentIndexlt3 = 3;

  bool switchControl = false;
  var textHolder = 'Switch is OFF';
  var Switch_one = 'ON';
  var Switch_Two = 'ON';
  var Switch_Three = 'ON';
  var l1 = 'ON';
  var l2 = 'ON';
  var l3 = 'ON';
  bool Switch_one_control = true;
  bool Switch_Two_control = true;
  bool Switch_Three_control = true;
  bool lb1 = false;
  bool lb2 = false;
  bool lb3 = false;
  bool init = true;

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

    } else {
      setState(() {
        switchControl = false;
        textHolder = 'Switch is OFF';
        Switch_one_control = true;
        Switch_Two_control = true;
        Switch_Three_control = true;
        SwitchOne();
        SwitchTwo();
        SwitchThree();
        r2l1();
        r2l2();
        r2l3();
      });
      print('Switch is OFF');

      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  void SwitchTwo() {
    if (Switch_Two_control == false) {
      setState(() {
        Switch_Two_control = true;
        Switch_Two = 'on';
        _currentIndexOne = 1;
      });
      print('on');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Fan2").set(Switch_Two);
      }
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        Switch_Two_control = false;
        Switch_Two = 'off';
        _currentIndexOne = 0;
      });
      print('off');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Fan2").set(Switch_Two);
      }// Put your code here which you want to execute on Switch OFF event.
    }
  }

  void SwitchThree() {
    if (Switch_Three_control == false) {
      setState(() {
        Switch_Three_control = true;
        Switch_Three = 'on';
        _currentIndexTwo = 1;
      });
      print('on');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Fan3").set(Switch_Three);
      }
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        Switch_Three_control = false;
        Switch_Three = 'off';
        _currentIndexTwo = 0;
      });
      print('off');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Fan3").set(Switch_Three);
      }
      // Put your code here which you want to execute on Switch OFF event.

    }
  }

  // void Initialize(){
  //   if(init == true){
  //     setState(() {
  //     r2l1();
  //     r2l2();
  //     r2l3();
  //     init == false;
  //   }
  //   );
  //   }
  //   else{
  //     setState(() {
  //       i}
  //   // }nit == false;
  //     });
  //
  void SwitchOne() {
    if (Switch_one_control == false) {
      setState(() {
        Switch_one_control = true;
        Switch_one = 'on';
        _currentIndex = 1;
      });
      print('on');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Fan1").set(Switch_one);
      }
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        Switch_one_control = false;
        Switch_one = 'off';
        _currentIndex = 2;
      });
      print('off');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Fan1").set(Switch_one);
      }
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  void r2l1() {
    if (lb1 == false) {
      setState(() {
        lb1 = true;
        l1 = 'on';
        _currentIndexl1 = 3;
        _currentIndexlt1 = 4;
      });
      print('on');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Light1").set(l1);
      }
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        lb1 = false;
        l1 = 'off';
        _currentIndexl1 = 2;
        _currentIndexlt1 = 3;
      });
      print('off');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Light1").set(l1);
      }
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  void r2l2() {
    if (lb2 == false) {
      setState(() {
        lb2 = true;
        l2 = 'on';
        _currentIndexlt2 = 4;
        _currentIndexl2 = 3;
      });
      print('on');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Light2").set(l2);
      }
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        lb2 = false;
        l2 = 'off';
        _currentIndexl2 = 2;
        _currentIndexlt2 = 3;
      });
      print('off');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Light2").set(l2);
      }
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  void r2l3() {
    if (lb3 == false) {
      setState(() {
        lb3 = true;
        l3 = 'on';
        _currentIndexlt3 = 4;
        _currentIndexl3 = 3;
      });
      print('on');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Light3").set(l3);
      }
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        lb3 = false;
        l3 = 'off';
        _currentIndexl3 = 2;
        _currentIndexlt3 = 3;
      });
      print('off');
      final ref=fb.reference().child("Automation");
      {
        ref.child("Light3").set(l3);
      }


      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  @override
  Widget build(BuildContext context) {
    final ref=fb.reference().child("Automation");
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
              Room2(),

            ],
          ),
        ),
      ),
    );
  }

  Widget MasterSwitch() {
    return Container(
      height: MediaQuery.of(context).size.height / 6.5,
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
                      child: Text(
                        'Master Switch',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Broadway",
                        ),
                      ),
                      padding: EdgeInsets.only(top: 8, right: 20),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.scale(
                            scale: 1.5,
                            child: Switch(
                              onChanged: toggleSwitch,
                              value: switchControl,
                              activeColor: Colors.green[800],
                              activeTrackColor: Colors.grey,
                              inactiveThumbColor: Colors.red,
                              inactiveTrackColor: Colors.grey,
                            )),
                        Text(
                          '$textHolder',
                          style: TextStyle(fontSize: 18),
                        )
                      ],
                    ),
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
      height: 230,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        color: Colors.greenAccent[400],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, bottom: 10, top: 5, right: 10),
              child: Container(
                child: Text(
                  'hall',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  )),
              width: MediaQuery.of(context).size.width,
              height: 137.5,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 9, left: 10.0, right: 0.0, bottom: 0),
                    child: GestureDetector(
                      onTap: () =>
                        SwitchOne(),
                      //  ushafan();

                      child: ClipOval(
                        child: Padding(
                          child: Container(
                            //color: _colors[_currentIndex],
                            height: 90.0, // height of the button
                            width: 90.0, // width of the button
                            child: Center(
                                child: Text(
                              '$Switch_one',
                              style: TextStyle(fontSize: 24),
                            )),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 2,
                              ),
                              shape: BoxShape.circle,
                              color: _colors[_currentIndex],
                            ),
                          ),
                          padding: EdgeInsets.only(left: 10, right: 10),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 9, bottom: 0, left: 10.0, right: 0.0),
                    child: GestureDetector(
                      onTap: () => SwitchTwo(),
                      child: ClipOval(
                        child: Container(
                          color: _colors[_currentIndexOne],
                          height: 90.0, // height of the button
                          width: 90.0, // width of the button
                          child: Center(
                              child: Text(
                            '$Switch_Two',
                            style: TextStyle(fontSize: 24),
                          )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 9, left: 10.0, bottom: 0, right: 0.0),
                    child: GestureDetector(
                      onTap: () => SwitchThree(),
                      child: ClipOval(
                        child: Container(
                          color: _colors[_currentIndexTwo],
                          height: 90.0, // hei
                          // ght of the button
                          width: 90.0, // width of the button
                          child: Center(
                              child: Text(
                            '$Switch_Three',
                            style: TextStyle(fontSize: 24),
                          )),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Room2() {
    return Container(
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blueGrey[900],
          border: (Border.all(color: Colors.grey, width: 2.0)),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Room 2',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey, width: 2.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4, left: 10),
                        child: Text(
                          'Light 1',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              letterSpacing: 2.0),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => r2l1(),
                        child: ClipOval(
                          child: Padding(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.tealAccent,
                                  width: 2,
                                ),
                                shape: BoxShape.circle,
                                color: _colors[_currentIndexl1],
                              ),
                              //color: _colors[_currentIndex],
                              height: 90.0, // height of the button
                              width: 90.0, // width of the button
                              child: Center(
                                  child: Text(
                                '$l1',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: _colors[_currentIndexlt1],
                                ),
                              )),
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey, width: 2.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4, top: 4),
                        child: Text(
                          'Tubelight',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              letterSpacing: 2.0),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => r2l2(),
                        child: ClipOval(
                          child: Padding(
                            child: Container(
                              //color: _colors[_currentIndex],
                              height: 90.0, // height of the button
                              width: 90.0, // width of the button
                              child: Center(
                                  child: Text(
                                '$l2',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: _colors[_currentIndexlt2],
                                ),
                              )),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.tealAccent,
                                  width: 2,
                                ),
                                shape: BoxShape.circle,
                                color: _colors[_currentIndexl2],
                              ),
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey, width: 2.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4, left: 10),
                        child: Text(
                          'Fan',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              letterSpacing: 2.0),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => r2l3(),
                        child: ClipOval(
                          child: Padding(
                            child: Container(
                              //color: _colors[_currentIndex],
                              height: 90.0, // height of the button
                              width: 90.0, // width of the button
                              child: Center(
                                  child: Text(
                                '$l3',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: _colors[_currentIndexlt3],
                                ),
                              )),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.tealAccent,
                                  width: 2,
                                ),
                                shape: BoxShape.circle,
                                color: _colors[_currentIndexl3],
                              ),
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
