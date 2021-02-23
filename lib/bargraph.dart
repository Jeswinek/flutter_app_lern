import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_lern/graph.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:flutter_app_lern/energy.dart';
import 'energy.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_app_lern/datepick.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';
import 'package:flutter_app_lern/graph.dart';
import 'package:flutter_app_lern/newgraph.dart';
class MyHomer extends StatefulWidget {
  static const routeName = '/bargraph';
// ignore: prefer_const_constructors_in_immutable
  MyHomer({Key key}) : super(key: key);

  @override
  MyHomerState createState() => MyHomerState();
}

class MyHomerState extends State<MyHomer> {
  final fb = FirebaseDatabase.instance.reference();

  String retrievedNam="5";
  String retrievedNam2="5";
  String retrievedNam3="5";
  String retrievedNam4="5";
  String retrievedNama="5";
  String retrievedNamb="5";
  String retrievedNamc="5";
  String retrievedNamd="5";
  String Datte = "";
  String Datte2 = "";
  String Datte3 = "";
  String Datte4 = "";
  String Dattea = "";
  String Datteb = "";
  String Dattec = "";
  String Datted = "";
  //int atl=int.parse(retrievedName);
  String name = "";
  String Times = "";
  String k = "";

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
  int dayusr =1;
  int monthusr=02;
  int yearusr=2021;

  String usrDate = "";
  TextStyle valueTextStyle=TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );
  TextStyle textTextStyle=TextStyle(

    fontSize: 16,
  );
  TextStyle buttonTextStyle=TextStyle(
    color: Colors.white,
    fontSize: 16,
  );
  samplefunction() {
    final ref = fb.reference().child("");
    DateTime now = DateTime.now();
    // print("${now.second}:${now.microsecond}");
    seconds = "${now.second}";
    Time = int.parse(seconds);
    rem = Time % 5;
    bal = 10;
    //Time - rem;

    if (monthusr >= 10) {
      Datte = "${yearusr}${monthusr}${dayusr}$bal";
      Datte2 = "${yearusr}${monthusr}${dayusr+1}$bal";
      Datte3 = "${yearusr}${monthusr}${dayusr+2}$bal";
      Datte4 = "${yearusr}${monthusr}${dayusr+3}$bal";
      //print(Datte);
      ref.child(Datte).once().then((DataSnapshot data) {
        setState(() {
          retrievedNam = data.value;

        });// cost(retrievedName);
      });
      ref.child(Datte2).once().then((DataSnapshot data) {
        setState(() {
          retrievedNam2 = data.value;

        });

      }
      );
      ref.child(Datte3).once().then((DataSnapshot data) {
        setState(() {
          retrievedNam3 = data.value;

        });

      }
      );
      ref.child(Datte4).once().then((DataSnapshot data) {
        setState(() {
          retrievedNam4 = data.value;

        });

      }
      );
    }else {
      Datte = "${yearusr}0${monthusr}${dayusr}$bal";
      //print(Datte);
      ref.child(Datte).once().then((DataSnapshot data) {
        setState(() {
          retrievedNam = data.value;
        });
        ref.child(Datte2).once().then((DataSnapshot data) {
          setState(() {
            retrievedNam2 = data.value;

          });

        }
        );
        ref.child(Datte3).once().then((DataSnapshot data) {
          setState(() {
            retrievedNam3 = data.value;

          });

        }
        );
        ref.child(Datte4).once().then((DataSnapshot data) {
          setState(() {
            retrievedNam4 = data.value;
          });
        }
        );
      });

    }
  }
  samplefunction2() {
    final ref = fb.reference().child("");
    DateTime now = DateTime.now();
    // print("${now.second}:${now.microsecond}");
    seconds = "${now.second}";
    Time = int.parse(seconds);
    rem = Time % 5;
    bal = 10;
    //Time - rem;

    if (monthusr >= 10) {
      Dattea = "${yearusr}${monthusr}${dayusr}$bal";
      Datteb = "${yearusr}${monthusr}${dayusr+1}$bal";
      Dattec = "${yearusr}${monthusr}${dayusr+2}$bal";
      Datted = "${yearusr}${monthusr}${dayusr+3}$bal";
      //print(Datte);
      ref.child(Dattea).once().then((DataSnapshot data) {
        setState(() {
          retrievedNama = data.value;

        });// cost(retrievedName);
      });
      ref.child(Datteb).once().then((DataSnapshot data) {
        setState(() {
          retrievedNamb = data.value;

        });

      }
      );
      ref.child(Dattec).once().then((DataSnapshot data) {
        setState(() {
          retrievedNamc = data.value;

        });

      }
      );
      ref.child(Datted).once().then((DataSnapshot data) {
        setState(() {
          retrievedNamd = data.value;

        });

      }
      );
    }else {
      Datte = "${yearusr}0${monthusr}${dayusr}$bal";
      //print(Datte);
      ref.child(Dattea).once().then((DataSnapshot data) {
        setState(() {
          retrievedNama = data.value;
        });
        ref.child(Datteb).once().then((DataSnapshot data) {
          setState(() {
            retrievedNamb = data.value;

          });

        }
        );
        ref.child(Dattec).once().then((DataSnapshot data) {
          setState(() {
            retrievedNamc = data.value;

          });

        }
        );
        ref.child(Datted).once().then((DataSnapshot data) {
          setState(() {
            retrievedNamd = data.value;
          });
        }
        );
      });

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text('Graph'),
          backgroundColor: Colors.transparent,

          actions: <Widget>[
            FlatButton(
              child: Row(
                children: <Widget>[
                  Text('Linegraph'),
                  Icon(Icons.stacked_line_chart_sharp)
                ],
              ),
              textColor: Colors.white,
              onPressed: (){
                Navigator.of(context).pushReplacementNamed(MyHome.routeName);
              },
            )
          ],
        ),

        body: Container(


          // height: 1000,
          //width: 500,

            child: Column(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomNumberPicker(
                          shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            side: new BorderSide(width: 3.0,color: Colors.blue),),
                          initialValue: 1, maxValue: 0031, minValue: 1, step: 1,
                          onValue: (value)
                          {dayusr = value;
                          print( "$dayusr");},
                        ),
                        CustomNumberPicker(
                          shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            side: new BorderSide(width: 3.0,color: Colors.blue),),
                          initialValue: 02, maxValue: 02, minValue: 02, step: 1,
                          onValue: (value)
                          {monthusr = value;
                          print( "$monthusr");},
                        ),
                        CustomNumberPicker(
                          shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            side: new BorderSide(width: 3.0,color: Colors.blue),),
                          initialValue: 2021, maxValue: 2021, minValue: 2020, step: 1,
                          onValue: (value)
                          {yearusr = value;
                          print( "$yearusr");},
                        ),
                      ]
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomNumberPicker(
                          shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            side: new BorderSide(width: 3.0,color: Colors.red),),
                          initialValue: 1, maxValue: 0031, minValue: 1, step: 1,
                          onValue: (value)
                          {dayusr = value;
                          print( "$dayusr");},
                        ),
                        CustomNumberPicker(
                            shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                              side: new BorderSide(width: 3.0,color: Colors.red),),
                            initialValue: 02, maxValue: 02, minValue: 02, step: 1,
                            onValue: (value) {
                              if (value == 1) {
                                value = 12;
                                monthusr = value;
                                print("$monthusr");
                              } else {
                                monthusr = value;
                                print("$monthusr");
                              }
                            }),
                        CustomNumberPicker(
                          shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            side: new BorderSide(width: 3.0,color: Colors.red),),
                          initialValue: 2021, maxValue: 2021, minValue: 2020, step: 1,
                          onValue: (value)
                          {yearusr = value;
                          print( "$yearusr");},
                        ),
                      ]
                  ),
                  Container(
                    height: 500,
                    width: 350,
                    child: SfCartesianChart(
                      plotAreaBorderWidth: 4,
                      plotAreaBorderColor: Colors.grey,

                      primaryXAxis: CategoryAxis(),
                      title: samplefunction(),
                      primaryYAxis: samplefunction2(),

                      // Chart title
                      //title: ChartTitle(text: 'comparison between two months'),

                      legend: Legend(isVisible: true),
                      // Enable tooltip
                      tooltipBehavior: TooltipBehavior(enable: false),
                      series: <ChartSeries<unitz, String>>
                      [

                        ColumnSeries<unitz, String>(
                            name: 'months',
                            
                            opacity: 1,
                            borderColor: Colors.green,
                            borderWidth: 4,
                            dataSource: <unitz>[

                              unitz('1', int.parse(retrievedNam)),
                              unitz('2', int.parse(retrievedNam2)),
                              unitz('3', int.parse(retrievedNam3)),
                              unitz('4', int.parse(retrievedNam3)),
                              unitz('5', int.parse(retrievedNam)),
                              unitz('6', int.parse(retrievedNam2)),
                              unitz('7', int.parse(retrievedNam3)),
                              unitz('8', int.parse(retrievedNam3)),
                              unitz('9', int.parse(retrievedNam)),
                              unitz('10', int.parse(retrievedNam2)),
                              unitz('11', int.parse(retrievedNam3)),
                              unitz('12', int.parse(retrievedNam3)),
                              unitz('13', int.parse(retrievedNam)),
                              unitz('14', int.parse(retrievedNam2)),
                              unitz('15', int.parse(retrievedNam3)),
                              unitz('16', int.parse(retrievedNam3)),
                              unitz('17', int.parse(retrievedNam)),
                              unitz('18', int.parse(retrievedNam2)),
                              unitz('19', int.parse(retrievedNam3)),
                              unitz('20', int.parse(retrievedNam3)),
                              unitz('21', int.parse(retrievedNam)),
                              unitz('22', int.parse(retrievedNam2)),
                              unitz('23', int.parse(retrievedNam3)),
                              unitz('24', int.parse(retrievedNam3)),
                              unitz('25', int.parse(retrievedNam)),
                              unitz('26', int.parse(retrievedNam2)),
                              unitz('27', int.parse(retrievedNam3)),
                              unitz('28', int.parse(retrievedNam3)),
                              unitz('29', int.parse(retrievedNam)),
                              unitz('30', int.parse(retrievedNam2)),
                              unitz('31', int.parse(retrievedNam3)),

                            ],


                            xValueMapper: (unitz dataz, _) => dataz.monthz,
                            yValueMapper: (unitz dataz, _) => dataz.valuez,
                            // Enable data label
                            dataLabelSettings: DataLabelSettings(isVisible: true)
                        ),

                      ],
                    ),
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



/*

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

*/