/*

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_app_lern/energy.dart';
import 'energy.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_app_lern/datepick.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';

class agee extends StatefulWidget {
  @override
  _ageeState createState() => _ageeState();
}

class _ageeState extends State<agee> {


  String birthDate = "";


  int age = -1;
  TextStyle valueTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  TextStyle textTextStyle = TextStyle(

    fontSize: 16,
  );
  TextStyle buttonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Calculator"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            (age > -1)
                ? Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                      border: Border.all(color: Colors.grey)
                  ),
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("BirthDate: ", style: textTextStyle,),
                      Text("$birthDate", style: valueTextStyle,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.all(16),

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.elliptical
                        (12, 12)),
                      border: Border.all(color: Colors.grey)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Age: ", style: textTextStyle,),
                      Text("$age", style: valueTextStyle,)
                    ],
                  ),
                )
              ],
            )
                : Text("Press button to see age"),
            SizedBox(
              height: 32,
            ),
            RaisedButton(
              color: Colors.blue,
              splashColor: Colors.blue.shade300,
              onPressed: () async {
                DateTime birthDate = await selectDate(context, DateTime.now(),
                    lastDate: DateTime.now());
                final df = new DateFormat('dd-MMM-yyyy');
                this.birthDate = df.format(birthDate);
                this.age = calculateAge(birthDate);

                setState(() {});
              },
              child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Select birthdate".toUpperCase(), style: buttonTextStyle,)),
            )
          ],
        ),
      ),
    );
  }
}
*/