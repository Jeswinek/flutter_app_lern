import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart'as charts;
import 'package:flutter_app_lern/energy.dart'as globals;
import 'package:flutter_app_lern/energy.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatefulWidget {
  static const routeName = '/graph';
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  List<charts.Series<monthGraph, int>> _seriesLineData;


  final fb = FirebaseDatabase.instance.reference();
  static var retrievedName= "";
  double units;
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
  String textHolder='7';
  int bal;
  int rem;
  double readingUnit = 0;
  double priceElectricity = 0;
  double monthlypriceElectricity = 0;
  int retrieve;
  int values;
  int abc=99;
  int abc2=int.parse(retrievedName);
  int abc3;

  changeText(String j) {
    setState(() {
      textHolder = j;
      samplefunction();
      changeText(retrievedName);
    });
  }


  samplefunction() {
    final ref = fb.reference().child("");
    DateTime now = DateTime.now();
    print("${now.second}:${now.microsecond}");
    seconds = "${now.second}";
    Time = int.parse(seconds);
    rem = Time % 5;
    bal = Time - rem;
    if (now.month >= 10) {
      Datte = "${now.year}${now.month}${now.day}$bal";
      print(Datte);
      ref.child(Datte).once().then((DataSnapshot data) {
        setState(() {
          retrievedName = data.value;
        });
        // cost(retrievedName);
      });
    } else {
      Datte = "${now.year}0${now.month}${now.day}$bal";
      print(Datte);
      ref.child(Datte).once().then((DataSnapshot data) {
        setState(() {
          retrievedName = data.value;
          changeText(retrievedName);
        });
      });
    }
  }


  _generateData() {
        var lineunitdata = [
           monthGraph(0,4),
           monthGraph(1,20),
          monthGraph(2,30),
          monthGraph(3,89),
        ];
    var lineunitdata1 = [
       monthGraph(0,0),
       monthGraph(1,50),
      monthGraph(2,60),
      monthGraph(3,70),
    ];
    
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Colors.lightGreen),
        id: 'Unit Price',
        data: lineunitdata,
        domainFn: (monthGraph line, _) => line.yearval,
        measureFn: (monthGraph line, _) => line.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Colors.cyan),
        id: 'Unit Price',
        data: lineunitdata1,
        domainFn: (monthGraph line, _) => line.yearval,
        measureFn: (monthGraph line, _) => line.salesval,
      ),
    );
 }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _seriesLineData = List<charts.Series<monthGraph, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(icon: Icon(Icons.stacked_line_chart)),
              ],
            ),
            title: Text('graphical speculation for users'),
          ),
          body: TabBarView(
            children: [

              Padding(
                padding: EdgeInsets.all(3.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text('$textHolder ', style: TextStyle(fontSize: 21)),
                    Text(
                          'consumption of units and its price',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.LineChart(
                              _seriesLineData,
                              defaultRenderer: new charts.LineRendererConfig(
                                  includeArea: true, stacked: true),
                              animate: true,
                              animationDuration: Duration(seconds: 1),
                              behaviors: [
                                new charts.ChartTitle('months',
                                    behaviorPosition: charts.BehaviorPosition.inside,
                                    titleOutsideJustification:charts.OutsideJustification.end),
                                new charts.ChartTitle('price',
                                    titleOutsideJustification: charts.OutsideJustification.start),
                               new charts.ChartTitle('line graph'),
                               //   behaviorPosition: charts.BehaviorPosition.end,
                                 // titleOutsideJustification:charts.OutsideJustification.middleDrawArea,
                                //)
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class monthGraph extends energy {
  int yearval;
  int salesval;

  monthGraph(this.salesval, this.yearval);
}