import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart'as charts;
import 'package:flutter_app_lern/graph.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<lineenergy, int>> _seriesLineData;
readingData(){

  var linesmonthlyata = [
    new lineenergy(0, 45),
    new lineenergy(1, 175),
    new lineenergy(2, 55),
    new lineenergy(3, 60),
  ];
  var linesmonthlydata = [
    new lineenergy(0, 35),
    new lineenergy(1, 46),
    new lineenergy(2, 45),
    new lineenergy(3, 50),

  ];

}

_lineData.add(
  charts.Series(
  colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
  data: linesmonthlyata,
  domainFn: ( lineenergy, _) => lineenergy.month,
  measureFn: (lineenergy , _) => lineenergy.monthval,
  ),
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesLineData = List<charts.Series<lineenergy, int>>();
    readingData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
            appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
        //backgroundColor: Color(0xff308e1c),
    title: Text('Flutter Charts'),
    ),
    body: Container(
    child: Padding(
    padding: EdgeInsets.all(8.0),
    child: Container(
    child: Center(
    child: Column(
    children: <Widget>[              Text(
      'consumption of units and its price',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),),
      Expanded(
        child: charts.LineChart(
            _seriesLineData,
            defaultRenderer: new charts.LineRendererConfig(
                includeArea: true, stacked: true),
            animate: true,
            animationDuration: Duration(seconds: 5),
            behaviors: [
              new charts.ChartTitle('months',
                  behaviorPosition: charts.BehaviorPosition.bottom,
                  titleOutsideJustification:charts.OutsideJustification.middleDrawArea),
              new charts.ChartTitle('price',
                  titleOutsideJustification: charts.OutsideJustification.middleDrawArea),

            ]
        ),
      ),
    ],
    ),
    ),
    ),
    ),
    ),
            ),
        ),
    );
  }
}
class lineenergy {
int monthval;
int month;

lineenergy(this.monthval, this.month);
}