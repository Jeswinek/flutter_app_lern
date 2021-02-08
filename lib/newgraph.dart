import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_app_lern/energy.dart';
import 'energy.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter_app_lern/datepick.dart';
class MyHome extends StatefulWidget {
// ignore: prefer_const_constructors_in_immutable
  MyHome({Key key}) : super(key: key);

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  final fb = FirebaseDatabase.instance.reference();

  String retrievedNam="5";
  //int atl=int.parse(retrievedName);
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
  double unit = 180;
  String textHolder = 'Old Sample Text...!!!';
  int bal;
  int rem;
  double readingUnit = 0;
  double priceElectricity = 0;
  double monthlypriceElectricity = 0;
  int retrieve;
  int values;
  int key = 2021011707;
  double units ;

  samplefunction() {
    final ref = fb.reference().child("");
    DateTime now = DateTime.now();
   // print("${now.second}:${now.microsecond}");
    seconds = "${now.second}";
    Time = int.parse(seconds);
    rem = Time % 5;
    bal =
    10;
    //Time - rem;

    if (now.month >= 10) {
      Datte = "${now.year}${now.month}${now.day}$bal";
      //print(Datte);
      ref.child(Datte).once().then((DataSnapshot data) {
        setState(() {
          retrievedNam = data.value;
        });

        // cost(retrievedName);
      });
    } else {
      Datte = "${now.year}0${now.month}${now.day}$bal";
      //print(Datte);
      ref.child(Datte).once().then((DataSnapshot data) {
        setState(() {
          retrievedNam = data.value;
        });

        // cost(retrievedName);
      });
    }
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text('Graph'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
            height: 1000,
            width: 500,

            child: Column(

              children: [

               SfCartesianChart(

          primaryXAxis: CategoryAxis(),
           title: samplefunction(),

          // Chart title
          //title: ChartTitle(text: 'comparison between two months'),
          // Enable legend
          legend: Legend(isVisible: true),
          // Enable tooltip
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries<unitz, String>>
          [

            AreaSeries<unitz, String>(
              name: 'previous month',
                opacity: 0.4,
                borderColor: Colors.blue,
                borderWidth: 2,
                dataSource: <unitz>[
                   //samplefunction(),
                  unitz('week 1',int.parse(retrievedNam)),
                  unitz('week 2', 150),
                  unitz('week 3', 200),
                  unitz('week 4', 78),
                ],


                xValueMapper: (unitz dataz, _) => dataz.monthz,
                yValueMapper: (unitz dataz, _) => dataz.valuez,
                // Enable data label
                dataLabelSettings: DataLabelSettings(isVisible: true)
            ),
            AreaSeries<unitz, String>(
              name:'current month',
                opacity: 0.3,
                borderColor: Colors.red,
                borderWidth: 2,
                dataSource: <unitz>[
                  unitz('week 1', 0),
                  unitz('week 2', 170),
                  unitz('week 3', 240),
                  unitz('week 4', 56),
                ],


                xValueMapper: (unitz dataz, _) => dataz.monthz,
                yValueMapper: (unitz dataz, _) => dataz.valuez,
                // Enable data label
                dataLabelSettings: DataLabelSettings(isVisible: true)
            ),

          ],
      ),

                Container(),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
                  RaisedButton(
                    onPressed: () => (context),
                    child: Text(
                      'Select date',
                      style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.blue,
                  ),
                RaisedButton(
                  onPressed: () => (context),
                  child: Text(
                    'Select date',
                    style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.red,
                ),
        ],
    )
        ]
    )
        )
      );
  }
}



class unitz {
  unitz(this.monthz, this.valuez);
  final String monthz;
  final int valuez;
}
