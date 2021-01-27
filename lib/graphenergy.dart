import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart'as charts;
class HomePageGraph extends StatefulWidget {
  final Widget child;

  HomePageGraph({Key key, this.child}) : super(key: key);

  _HomePageGraphState createState() => _HomePageGraphState();
}

class _HomePageGraphState extends State<HomePageGraph> {
  List<charts.Series<graphlinear, int>> _seriesLineData;
  _generateData() {
    var lineunitdata = [
      new graphlinear (0, 45),
      new graphlinear(1, 5),
      new graphlinear(2, 55),
      new graphlinear(3, 60),
      new graphlinear(4, 61),
      new graphlinear(5, 70),
    ];
    var lineunitdata1 = [
      new graphlinear(0, 35),
      new graphlinear(1, 46),
      new graphlinear(2, 45),
      new graphlinear(3, 50),
      new graphlinear(4, 51),
      new graphlinear(5, 60),
    ];
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Linear Graph',
        data: lineunitdata,
        domainFn: (graphlinear linear, _) => linear.monthsval,
        measureFn: (graphlinear linear, _) => linear.unitsval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Linear graph',
        data: lineunitdata1,
        domainFn: (graphlinear linear, _) => linear.monthsval,
        measureFn: (graphlinear linear, _) => linear.unitsval,
      ),
    );
  }
  @override
  void initState() {

    super.initState();
    _seriesLineData = List<charts.Series<graphlinear, int>>();
    _generateData();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff1976d2),
            title: Text('graphical speculation for users'),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'consumption of units and its price', style: TextStyle(
                        fontSize: 40.0, fontWeight: FontWeight.bold),),
                    Expanded(
                      child: charts.LineChart(
                          _seriesLineData,
                          defaultRenderer: new charts.LineRendererConfig(
                              includeArea: true, stacked: true),
                          animate: true,
                          animationDuration: Duration(seconds: 1),
                          behaviors: [
                            new charts.ChartTitle('months',
                                behaviorPosition: charts.BehaviorPosition
                                    .inside,
                                titleOutsideJustification: charts
                                    .OutsideJustification.end),
                            new charts.ChartTitle('price',
                                titleOutsideJustification: charts
                                    .OutsideJustification.start),
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
      )
    );
  }
        //backgroundColor: Color(0xff308e1c)
}

class graphlinear {
  int unitsval;
  int monthsval;

  graphlinear(this.unitsval, this.monthsval);
}