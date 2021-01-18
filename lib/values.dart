//import 'dart:html';

import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}


class _RegisterState extends State<Register> {
  static final DateTime now=DateTime.now();
  static final DateFormat formatter=DateFormat('yyyyMMdd');
  String formated=formatter.format(now);
  final fb = FirebaseDatabase.instance.reference();
  var retrievedName="";
  String name = "";
  String Times="";
  String k="";
  String Datte="";
  String y="";
  var ref;
  int Time;
  int bal;
  int rem;
  String seconds;

  samplefunction(){
    final ref=fb.reference().child("");
    DateTime now=DateTime.now();
    DateFormat formatter=DateFormat('yyyyMMdd');
    formated=formatter.format(now);
    print(formated);
    Datte=formated+Times;
    ref.child(Datte).once().then((DataSnapshot data){
          setState(() {

            formated=formatter.format(now);
            retrievedName=data.value ;
          });
        });
  }
  samplefunction2(){
    final ref = fb.reference().child("");
    DateTime now=DateTime.now();
    print("${now.second}:${now.microsecond}");
    seconds="${now.second}";
    Time = int.parse(seconds);
    rem = Time%5;
    bal=Time-rem;
    print(now.month);
    if(now.month>=9){
    Datte="${now.year}${now.month}${now.day}$Times";}
    else{
      Datte="${now.year}0${now.month}${now.day}$Times";}
    //  ref=fb.reference().child("")
    ref.child(Datte).set(name);
    y = name;
  //   final ref=fb.reference().child("");
  //   DateTime now=DateTime.now();
  //   DateFormat formatter=DateFormat('yyyyMMdd');
  //   formated=formatter.format(now);
  //   print(formated);
  //   Datte=formated+Times;
  // //  ref=fb.reference().child("");
  //   formated=formatter.format(now);
  //   ref.child(Datte).set(name);
  //   y=name;
    // ref.child(Datte).once().then((DataSnapshot data){
    //   setState(() {
    //
    //     formated=formatter.format(now);
    //     retrievedName=data.value ;
    //   });
    // });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Name',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    shadows: [Shadow(
                      blurRadius: 10,
                      color: Colors.blue,
                    )]
                ),
              ),
            ),
            Flexible(child: TextField(
              onChanged: (val){
                setState(() {
                  name=val;
                });
              },
            )),
            Text("Time"),Flexible(child: TextField(
              onChanged: (ui){
                setState(() {
                  Times=ui;
                });
              },
            )),
            RaisedButton(
              onPressed: ()=>{
                {
                  setState(() {
                    samplefunction2();
                    k=Datte;
                  })
                }
                //samplefunction2(),
                // final ref=fb.reference().child("");
                // formated=formatter.format(now);
                // ref.child(formated+Times).set(name);
              },
              child: Text("Registration"),
            ),
            RaisedButton(
              onPressed: () =>{
                //samplefunction()
                //{
                //   ref.child(" new1").once().then((DataSnapshot data){
                //     setState(() {
                //
                //       formated=formatter.format(now);
                //       retrievedName=data.value ;
                //     });
                //   });
                // },
                {
                  setState(() {
    samplefunction();
                    k=Datte;
                  })
                }
              },
              child: Text("Retrieve"),
            ),
            Text(y),
            Text(k),
            Text(retrievedName),
          ],
        ),
      ),
    );
  }

}