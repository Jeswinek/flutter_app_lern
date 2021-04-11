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
class Myomer extends StatefulWidget {
  static const routeName = '/bargraph';
// ignore: prefer_const_constructors_in_immutable
  Myomer({Key key}) : super(key: key);

  @override
  MyomerState createState() => MyomerState();
}

class MyomerState extends State<Myomer> {
  final fb = FirebaseDatabase.instance.reference();
  String retrievedNam0="5";
  String retrievedNam1="5";
  String retrievedNam2="5";
  String retrievedNam3="5";
  String retrievedNam4="5";
  String retrievedNam5="5";
  String retrievedNam6="5";
  String retrievedNam7="5";
  String retrievedNam8="5";
  String retrievedNam9="5";
  String retrievedNam10="5";
  String retrievedNam11="5";
  String retrievedNam12="5";
  String retrievedNam13="5";
  String retrievedNam14="5";
  String retrievedNam15="5";
  String retrievedNam16="5";
  String retrievedNam17="5";
  String retrievedNam18="5";
  String retrievedNam19="5";
  String retrievedNam20="5";
  String retrievedNam21="5";
  String retrievedNam22="5";
  String retrievedNam23="5";
  String retrievedNam24="5";
  String retrievedNam25="5";
  String retrievedNam26="5";
  String retrievedNam27="5";
  String retrievedNam28="5";
  String retrievedNam29="5";
  String retrievedNam30="5";
  String retrievedNam31="5";
  String Datte0 = "";
  String Datte1 = "";
  String Datte2 = "";
  String Datte3 = "";
  String Datte4 = "";
  String Datte5 = "";
  String Datte6 = "";
  String Datte7 = "";
  String Datte8 = "";
  String Datte9 = "";
  String Datte10 = "";
  String Datte11 = "";
  String Datte12 = "";
  String Datte13 = "";
  String Datte14 = "";
  String Datte15 = "";
  String Datte16 = "";
  String Datte17 = "";
  String Datte18 = "";
  String Datte19 = "";
  String Datte20 = "";
  String Datte21 = "";
  String Datte22 = "";
  String Datte23 = "";
  String Datte24 = "";
  String Datte25 = "";
  String Datte26 = "";
  String Datte27 = "";
  String Datte28 = "";
  String Datte29 = "";
  String Datte30 = "";
  String Datte31 = "";
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
    bal = 55;
    //Time - rem;

    if (monthusr >= 10) {
      Datte0="${yearusr}${monthusr-1}${31}$bal";
      Datte1 = "${yearusr}${monthusr}${dayusr}$bal";
      Datte2 = "${yearusr}${monthusr}${dayusr+1}$bal";
      Datte3 = "${yearusr}${monthusr}${dayusr+2}$bal";
      Datte4 = "${yearusr}${monthusr}${dayusr+3}$bal";
      Datte5 = "${yearusr}${monthusr}${dayusr+4}$bal";
      Datte6 = "${yearusr}${monthusr}${dayusr+5}$bal";
      Datte7 = "${yearusr}${monthusr}${dayusr+6}$bal";
      Datte8 = "${yearusr}${monthusr}${dayusr+7}$bal";
      Datte9 = "${yearusr}${monthusr}${dayusr+8}$bal";
      Datte10 = "${yearusr}${monthusr}${dayusr+9}$bal";
      Datte11 = "${yearusr}${monthusr}${dayusr+10}$bal";
      Datte12 = "${yearusr}${monthusr}${dayusr+11}$bal";
      Datte13 = "${yearusr}${monthusr}${dayusr+12}$bal";
      Datte14 = "${yearusr}${monthusr}${dayusr+13}$bal";
      Datte15 = "${yearusr}${monthusr}${dayusr+14}$bal";
      Datte16 = "${yearusr}${monthusr}${dayusr+15}$bal";
      Datte17 = "${yearusr}${monthusr}${dayusr+16}$bal";
      Datte18 = "${yearusr}${monthusr}${dayusr+17}$bal";
      Datte19 = "${yearusr}${monthusr}${dayusr+18}$bal";
      Datte20 = "${yearusr}${monthusr}${dayusr+19}$bal";
      Datte21 = "${yearusr}${monthusr}${dayusr+20}$bal";
      Datte22 = "${yearusr}${monthusr}${dayusr+21}$bal";
      Datte23 = "${yearusr}${monthusr}${dayusr+22}$bal";
      Datte24 = "${yearusr}${monthusr}${dayusr+23}$bal";
      Datte25 = "${yearusr}${monthusr}${dayusr+24}$bal";
      Datte26 = "${yearusr}${monthusr}${dayusr+25}$bal";
      Datte27 = "${yearusr}${monthusr}${dayusr+26}$bal";
      Datte28 = "${yearusr}${monthusr}${dayusr+27}$bal";
      Datte29 = "${yearusr}${monthusr}${dayusr+28}$bal";
      Datte30 = "${yearusr}${monthusr}${dayusr+29}$bal";
      Datte31 = "${yearusr}${monthusr}${dayusr+30}$bal";

      ref.child(Datte0).once().then((DataSnapshot data) {setState(() {retrievedNam0 = data.value;});});
      ref.child(Datte1).once().then((DataSnapshot data) {setState(() {retrievedNam1 = data.value;});});
      ref.child(Datte2).once().then((DataSnapshot data) {setState(() {retrievedNam2 = data.value;});});
      ref.child(Datte3).once().then((DataSnapshot data) {setState(() {retrievedNam3 = data.value;});});
      ref.child(Datte4).once().then((DataSnapshot data) {setState(() {retrievedNam4 = data.value;});});
      ref.child(Datte5).once().then((DataSnapshot data) {setState(() {retrievedNam5 = data.value;});});
      ref.child(Datte6).once().then((DataSnapshot data) {setState(() {retrievedNam6 = data.value;});});
      ref.child(Datte7).once().then((DataSnapshot data) {setState(() {retrievedNam7 = data.value;});});
      ref.child(Datte8).once().then((DataSnapshot data) {setState(() {retrievedNam8 = data.value;});});
      ref.child(Datte9).once().then((DataSnapshot data) {setState(() {retrievedNam9 = data.value;});});
      ref.child(Datte10).once().then((DataSnapshot data) {setState(() {retrievedNam10 = data.value;});});
      ref.child(Datte11).once().then((DataSnapshot data) {setState(() {retrievedNam11 = data.value;});});
      ref.child(Datte12).once().then((DataSnapshot data) {setState(() {retrievedNam12 = data.value;});});
      ref.child(Datte13).once().then((DataSnapshot data) {setState(() {retrievedNam13 = data.value;});});
      ref.child(Datte14).once().then((DataSnapshot data) {setState(() {retrievedNam14 = data.value;});});
      ref.child(Datte15).once().then((DataSnapshot data) {setState(() {retrievedNam15 = data.value;});});
      ref.child(Datte16).once().then((DataSnapshot data) {setState(() {retrievedNam16 = data.value;});});
      ref.child(Datte17).once().then((DataSnapshot data) {setState(() {retrievedNam17 = data.value;});});
      ref.child(Datte18).once().then((DataSnapshot data) {setState(() {retrievedNam18 = data.value;});});
      ref.child(Datte19).once().then((DataSnapshot data) {setState(() {retrievedNam19 = data.value;});});
      ref.child(Datte20).once().then((DataSnapshot data) {setState(() {retrievedNam20 = data.value;});});
      ref.child(Datte21).once().then((DataSnapshot data) {setState(() {retrievedNam21 = data.value;});});
      ref.child(Datte22).once().then((DataSnapshot data) {setState(() {retrievedNam22 = data.value;});});
      ref.child(Datte23).once().then((DataSnapshot data) {setState(() {retrievedNam23 = data.value;});});
      ref.child(Datte24).once().then((DataSnapshot data) {setState(() {retrievedNam24 = data.value;});});
      ref.child(Datte25).once().then((DataSnapshot data) {setState(() {retrievedNam25 = data.value;});});
      ref.child(Datte26).once().then((DataSnapshot data) {setState(() {retrievedNam26 = data.value;});});
      ref.child(Datte27).once().then((DataSnapshot data) {setState(() {retrievedNam27 = data.value;});});
      ref.child(Datte28).once().then((DataSnapshot data) {setState(() {retrievedNam28 = data.value;});});
      ref.child(Datte29).once().then((DataSnapshot data) {setState(() {retrievedNam29 = data.value;});});
      ref.child(Datte30).once().then((DataSnapshot data) {setState(() {retrievedNam30 = data.value;});});
      ref.child(Datte31).once().then((DataSnapshot data) {setState(() {retrievedNam31 = data.value;});});
    }
    else
    {
      Datte0="${yearusr}0${monthusr-1}${31}$bal";
      Datte1   ="${yearusr}0${monthusr}${dayusr}$bal";
      Datte2  = "${yearusr}0${monthusr}${dayusr+1}$bal";
      Datte3  = "${yearusr}0${monthusr}${dayusr+2}$bal";
      Datte4  = "${yearusr}0${monthusr}${dayusr+3}$bal";
      Datte5  = "${yearusr}0${monthusr}${dayusr+4}$bal";
      Datte6  = "${yearusr}0${monthusr}${dayusr+5}$bal";
      Datte7  = "${yearusr}0${monthusr}${dayusr+6}$bal";
      Datte8  = "${yearusr}0${monthusr}${dayusr+7}$bal";
      Datte9  = "${yearusr}0${monthusr}${dayusr+8}$bal";
      Datte10  = "${yearusr}0${monthusr}${dayusr+9}$bal";
      Datte11 = "${yearusr}0${monthusr}${dayusr+10}$bal";
      Datte12 = "${yearusr}0${monthusr}${dayusr+11}$bal";
      Datte13 = "${yearusr}0${monthusr}${dayusr+12}$bal";
      Datte14 = "${yearusr}0${monthusr}${dayusr+13}$bal";
      Datte15 = "${yearusr}0${monthusr}${dayusr+14}$bal";
      Datte16 = "${yearusr}0${monthusr}${dayusr+15}$bal";
      Datte17 = "${yearusr}0${monthusr}${dayusr+16}$bal";
      Datte18 = "${yearusr}0${monthusr}${dayusr+17}$bal";
      Datte19 = "${yearusr}0${monthusr}${dayusr+18}$bal";
      Datte20 = "${yearusr}0${monthusr}${dayusr+19}$bal";
      Datte21 = "${yearusr}0${monthusr}${dayusr+20}$bal";
      Datte22 = "${yearusr}0${monthusr}${dayusr+21}$bal";
      Datte23 = "${yearusr}0${monthusr}${dayusr+22}$bal";
      Datte24 = "${yearusr}0${monthusr}${dayusr+23}$bal";
      Datte25 = "${yearusr}0${monthusr}${dayusr+24}$bal";
      Datte26 = "${yearusr}0${monthusr}${dayusr+25}$bal";
      Datte27 = "${yearusr}0${monthusr}${dayusr+26}$bal";
      Datte28 = "${yearusr}0${monthusr}${dayusr+27}$bal";
      Datte29 = "${yearusr}0${monthusr}${dayusr+28}$bal";
      Datte30 = "${yearusr}0${monthusr}${dayusr+29}$bal";
      Datte31 = "${yearusr}0${monthusr}${dayusr+30}$bal";

      ref.child(Datte0).once().then((DataSnapshot data) {setState(() {retrievedNam0 = data.value;});});
      ref.child(Datte1).once().then((DataSnapshot data) {setState(() {retrievedNam1 = data.value;});});
      ref.child(Datte2).once().then((DataSnapshot data) {setState(() {retrievedNam2 = data.value;});});
      ref.child(Datte3).once().then((DataSnapshot data) {setState(() {retrievedNam3 = data.value;});});
      ref.child(Datte4).once().then((DataSnapshot data) {setState(() {retrievedNam4 = data.value;});});
      ref.child(Datte5).once().then((DataSnapshot data) {setState(() {retrievedNam5 = data.value;});});
      ref.child(Datte6).once().then((DataSnapshot data) {setState(() {retrievedNam6 = data.value;});});
      ref.child(Datte7).once().then((DataSnapshot data) {setState(() {retrievedNam7 = data.value;});});
      ref.child(Datte8).once().then((DataSnapshot data) {setState(() {retrievedNam8 = data.value;});});
      ref.child(Datte9).once().then((DataSnapshot data) {setState(() {retrievedNam9 = data.value;});});
      ref.child(Datte10).once().then((DataSnapshot data) {setState(() {retrievedNam10 = data.value;});});
      ref.child(Datte11).once().then((DataSnapshot data) {setState(() {retrievedNam11 = data.value;});});
      ref.child(Datte12).once().then((DataSnapshot data) {setState(() {retrievedNam12 = data.value;});});
      ref.child(Datte13).once().then((DataSnapshot data) {setState(() {retrievedNam13 = data.value;});});
      ref.child(Datte14).once().then((DataSnapshot data) {setState(() {retrievedNam14 = data.value;});});
      ref.child(Datte15).once().then((DataSnapshot data) {setState(() {retrievedNam15 = data.value;});});
      ref.child(Datte16).once().then((DataSnapshot data) {setState(() {retrievedNam16 = data.value;});});
      ref.child(Datte17).once().then((DataSnapshot data) {setState(() {retrievedNam17 = data.value;});});
      ref.child(Datte18).once().then((DataSnapshot data) {setState(() {retrievedNam18 = data.value;});});
      ref.child(Datte19).once().then((DataSnapshot data) {setState(() {retrievedNam19 = data.value;});});
      ref.child(Datte20).once().then((DataSnapshot data) {setState(() {retrievedNam20 = data.value;});});
      ref.child(Datte21).once().then((DataSnapshot data) {setState(() {retrievedNam21 = data.value;});});
      ref.child(Datte22).once().then((DataSnapshot data) {setState(() {retrievedNam22 = data.value;});});
      ref.child(Datte23).once().then((DataSnapshot data) {setState(() {retrievedNam23 = data.value;});});
      ref.child(Datte24).once().then((DataSnapshot data) {setState(() {retrievedNam24 = data.value;});});
      ref.child(Datte25).once().then((DataSnapshot data) {setState(() {retrievedNam25 = data.value;});});
      ref.child(Datte26).once().then((DataSnapshot data) {setState(() {retrievedNam26 = data.value;});});
      ref.child(Datte27).once().then((DataSnapshot data) {setState(() {retrievedNam27 = data.value;});});
      ref.child(Datte28).once().then((DataSnapshot data) {setState(() {retrievedNam28 = data.value;});});
      ref.child(Datte29).once().then((DataSnapshot data) {setState(() {retrievedNam29 = data.value;});});
      ref.child(Datte30).once().then((DataSnapshot data) {setState(() {retrievedNam30 = data.value;});});
      ref.child(Datte31).once().then((DataSnapshot data) {setState(() {retrievedNam31 = data.value;});});

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
                  Icon(Icons.show_chart)
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
                        //CustomNumberPicker(
                        // shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                        //    side: new BorderSide(width: 3.0,color: Colors.blue),),
                        //  initialValue: 1, maxValue: 0031, minValue: 1, step: 1,
                        //   onValue: (value)
                        //   {dayusr = value;
                        //  print( "$dayusr");},
                        // ),
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

                  Container(

                    height: 500,
                    width: 350,
                    child: SfCartesianChart(
                      plotAreaBorderWidth: 4,
                      plotAreaBorderColor: Colors.grey,
                      primaryXAxis: CategoryAxis(),
                      title: samplefunction(),
                      //primaryYAxis: samplefunction2(),
                      // Chart title
                      //title: ChartTitle(text: 'comparison between two months'),
                      legend: Legend(isVisible: true),
                      // Enable tooltip
                      tooltipBehavior: TooltipBehavior(enable: false),

                      series: <ChartSeries<unitz, String>>
                      [
    (() {
    if(monthusr<=12 && monthusr>=1)
    {
    if(monthusr==1 || monthusr==3 ||monthusr==5 ||monthusr==7||monthusr==8||monthusr==10||monthusr==12)
    { ColumnSeries<unitz, String>(

        name: 'months',
        opacity: 1,
        borderColor: Colors.green,
        borderWidth: 4,

        dataSource: <unitz>[

          unitz('1',int.parse(retrievedNam1)-int.parse(retrievedNam0)),
          unitz('2', int.parse(retrievedNam2)-int.parse(retrievedNam1)),
          unitz('3', int.parse(retrievedNam3)-int.parse(retrievedNam2)),
          unitz('4', int.parse(retrievedNam4)-int.parse(retrievedNam3)),
          unitz('5', int.parse(retrievedNam5)-int.parse(retrievedNam4)),
          unitz('6', int.parse(retrievedNam6)-int.parse(retrievedNam5)),
          unitz('7', int.parse(retrievedNam7)-int.parse(retrievedNam6)),
          unitz('8', int.parse(retrievedNam8)-int.parse(retrievedNam7)),
          unitz('9', int.parse(retrievedNam9)-int.parse(retrievedNam8)),
          unitz('10', int.parse(retrievedNam10)-int.parse(retrievedNam9)),
          unitz('11', int.parse(retrievedNam11)-int.parse(retrievedNam10)),
          unitz('12', int.parse(retrievedNam12)-int.parse(retrievedNam11)),
          unitz('13', int.parse(retrievedNam13)-int.parse(retrievedNam12)),
          unitz('14', int.parse(retrievedNam14)-int.parse(retrievedNam13)),
          unitz('15', int.parse(retrievedNam15)-int.parse(retrievedNam14)),
          unitz('16', int.parse(retrievedNam16)-int.parse(retrievedNam15)),
          unitz('17', int.parse(retrievedNam17)-int.parse(retrievedNam16)),
          unitz('18', int.parse(retrievedNam18)-int.parse(retrievedNam17)),
          unitz('19', int.parse(retrievedNam19)-int.parse(retrievedNam18)),
          unitz('20', int.parse(retrievedNam20)-int.parse(retrievedNam19)),
          unitz('21', int.parse(retrievedNam21)-int.parse(retrievedNam20)),
          unitz('22', int.parse(retrievedNam22)-int.parse(retrievedNam21)),
          unitz('23', int.parse(retrievedNam23)-int.parse(retrievedNam22)),
          unitz('24', int.parse(retrievedNam24)-int.parse(retrievedNam23)),
          unitz('25', int.parse(retrievedNam25)-int.parse(retrievedNam24)),
          unitz('26', int.parse(retrievedNam26)-int.parse(retrievedNam25)),
          unitz('27', int.parse(retrievedNam27)-int.parse(retrievedNam26)),
          unitz('28', int.parse(retrievedNam28)-int.parse(retrievedNam27)),
          unitz('29', int.parse(retrievedNam29)-int.parse(retrievedNam28)),
          unitz('30', int.parse(retrievedNam30)-int.parse(retrievedNam29)),
          unitz('31', int.parse(retrievedNam31)-int.parse(retrievedNam30)),
        ],
        xValueMapper: (unitz dataz, _) => dataz.monthz,
        yValueMapper: (unitz dataz, _) => dataz.valuez,
        // Enable data label
        dataLabelSettings: DataLabelSettings(isVisible: true)

    );}
    else
    if(monthusr==4||monthusr==6||monthusr==9||monthusr==11)
    { ColumnSeries<unitz, String>(

        name: 'months',
        opacity: 1,
        borderColor: Colors.green,
        borderWidth: 4,

        dataSource: <unitz>[

          unitz('1',int.parse(retrievedNam1)-int.parse(retrievedNam0)),
          unitz('2', int.parse(retrievedNam2)-int.parse(retrievedNam1)),
          unitz('3', int.parse(retrievedNam3)-int.parse(retrievedNam2)),
          unitz('4', int.parse(retrievedNam4)-int.parse(retrievedNam3)),
          unitz('5', int.parse(retrievedNam5)-int.parse(retrievedNam4)),
          unitz('6', int.parse(retrievedNam6)-int.parse(retrievedNam5)),
          unitz('7', int.parse(retrievedNam7)-int.parse(retrievedNam6)),
          unitz('8', int.parse(retrievedNam8)-int.parse(retrievedNam7)),
          unitz('9', int.parse(retrievedNam9)-int.parse(retrievedNam8)),
          unitz('10', int.parse(retrievedNam10)-int.parse(retrievedNam9)),
          unitz('11', int.parse(retrievedNam11)-int.parse(retrievedNam10)),
          unitz('12', int.parse(retrievedNam12)-int.parse(retrievedNam11)),
          unitz('13', int.parse(retrievedNam13)-int.parse(retrievedNam12)),
          unitz('14', int.parse(retrievedNam14)-int.parse(retrievedNam13)),
          unitz('15', int.parse(retrievedNam15)-int.parse(retrievedNam14)),
          unitz('16', int.parse(retrievedNam16)-int.parse(retrievedNam15)),
          unitz('17', int.parse(retrievedNam17)-int.parse(retrievedNam16)),
          unitz('18', int.parse(retrievedNam18)-int.parse(retrievedNam17)),
          unitz('19', int.parse(retrievedNam19)-int.parse(retrievedNam18)),
          unitz('20', int.parse(retrievedNam20)-int.parse(retrievedNam19)),
          unitz('21', int.parse(retrievedNam21)-int.parse(retrievedNam20)),
          unitz('22', int.parse(retrievedNam22)-int.parse(retrievedNam21)),
          unitz('23', int.parse(retrievedNam23)-int.parse(retrievedNam22)),
          unitz('24', int.parse(retrievedNam24)-int.parse(retrievedNam23)),
          unitz('25', int.parse(retrievedNam25)-int.parse(retrievedNam24)),
          unitz('26', int.parse(retrievedNam26)-int.parse(retrievedNam25)),
          unitz('27', int.parse(retrievedNam27)-int.parse(retrievedNam26)),
          unitz('28', int.parse(retrievedNam28)-int.parse(retrievedNam27)),
          unitz('29', int.parse(retrievedNam29)-int.parse(retrievedNam28)),
          unitz('30', int.parse(retrievedNam30)-int.parse(retrievedNam29)),
        ],
        xValueMapper: (unitz dataz, _) => dataz.monthz,
        yValueMapper: (unitz dataz, _) => dataz.valuez,
        // Enable data label
        dataLabelSettings: DataLabelSettings(isVisible: true)

    );}
    else
    {
    if(monthusr==2)
    {
    if(yearusr%400==0 && yearusr%100==0)
    { ColumnSeries<unitz, String>(

        name: 'months',
        opacity: 1,
        borderColor: Colors.green,
        borderWidth: 4,

        dataSource: <unitz>[

          unitz('1',int.parse(retrievedNam1)-int.parse(retrievedNam0)),
          unitz('2', int.parse(retrievedNam2)-int.parse(retrievedNam1)),
          unitz('3', int.parse(retrievedNam3)-int.parse(retrievedNam2)),
          unitz('4', int.parse(retrievedNam4)-int.parse(retrievedNam3)),
          unitz('5', int.parse(retrievedNam5)-int.parse(retrievedNam4)),
          unitz('6', int.parse(retrievedNam6)-int.parse(retrievedNam5)),
          unitz('7', int.parse(retrievedNam7)-int.parse(retrievedNam6)),
          unitz('8', int.parse(retrievedNam8)-int.parse(retrievedNam7)),
          unitz('9', int.parse(retrievedNam9)-int.parse(retrievedNam8)),
          unitz('10', int.parse(retrievedNam10)-int.parse(retrievedNam9)),
          unitz('11', int.parse(retrievedNam11)-int.parse(retrievedNam10)),
          unitz('12', int.parse(retrievedNam12)-int.parse(retrievedNam11)),
          unitz('13', int.parse(retrievedNam13)-int.parse(retrievedNam12)),
          unitz('14', int.parse(retrievedNam14)-int.parse(retrievedNam13)),
          unitz('15', int.parse(retrievedNam15)-int.parse(retrievedNam14)),
          unitz('16', int.parse(retrievedNam16)-int.parse(retrievedNam15)),
          unitz('17', int.parse(retrievedNam17)-int.parse(retrievedNam16)),
          unitz('18', int.parse(retrievedNam18)-int.parse(retrievedNam17)),
          unitz('19', int.parse(retrievedNam19)-int.parse(retrievedNam18)),
          unitz('20', int.parse(retrievedNam20)-int.parse(retrievedNam19)),
          unitz('21', int.parse(retrievedNam21)-int.parse(retrievedNam20)),
          unitz('22', int.parse(retrievedNam22)-int.parse(retrievedNam21)),
          unitz('23', int.parse(retrievedNam23)-int.parse(retrievedNam22)),
          unitz('24', int.parse(retrievedNam24)-int.parse(retrievedNam23)),
          unitz('25', int.parse(retrievedNam25)-int.parse(retrievedNam24)),
          unitz('26', int.parse(retrievedNam26)-int.parse(retrievedNam25)),
          unitz('27', int.parse(retrievedNam27)-int.parse(retrievedNam26)),
          unitz('28', int.parse(retrievedNam28)-int.parse(retrievedNam27)),
          unitz('29', int.parse(retrievedNam29)-int.parse(retrievedNam28)),
        ],
        xValueMapper: (unitz dataz, _) => dataz.monthz,
        yValueMapper: (unitz dataz, _) => dataz.valuez,
        // Enable data label
        dataLabelSettings: DataLabelSettings(isVisible: true)

    );}
    else
    {
    if(yearusr%4==0 && yearusr%100!=0)
    { ColumnSeries<unitz, String>(

        name: 'months',
        opacity: 1,
        borderColor: Colors.green,
        borderWidth: 4,

        dataSource: <unitz>[

          unitz('1',int.parse(retrievedNam1)-int.parse(retrievedNam0)),
          unitz('2', int.parse(retrievedNam2)-int.parse(retrievedNam1)),
          unitz('3', int.parse(retrievedNam3)-int.parse(retrievedNam2)),
          unitz('4', int.parse(retrievedNam4)-int.parse(retrievedNam3)),
          unitz('5', int.parse(retrievedNam5)-int.parse(retrievedNam4)),
          unitz('6', int.parse(retrievedNam6)-int.parse(retrievedNam5)),
          unitz('7', int.parse(retrievedNam7)-int.parse(retrievedNam6)),
          unitz('8', int.parse(retrievedNam8)-int.parse(retrievedNam7)),
          unitz('9', int.parse(retrievedNam9)-int.parse(retrievedNam8)),
          unitz('10', int.parse(retrievedNam10)-int.parse(retrievedNam9)),
          unitz('11', int.parse(retrievedNam11)-int.parse(retrievedNam10)),
          unitz('12', int.parse(retrievedNam12)-int.parse(retrievedNam11)),
          unitz('13', int.parse(retrievedNam13)-int.parse(retrievedNam12)),
          unitz('14', int.parse(retrievedNam14)-int.parse(retrievedNam13)),
          unitz('15', int.parse(retrievedNam15)-int.parse(retrievedNam14)),
          unitz('16', int.parse(retrievedNam16)-int.parse(retrievedNam15)),
          unitz('17', int.parse(retrievedNam17)-int.parse(retrievedNam16)),
          unitz('18', int.parse(retrievedNam18)-int.parse(retrievedNam17)),
          unitz('19', int.parse(retrievedNam19)-int.parse(retrievedNam18)),
          unitz('20', int.parse(retrievedNam20)-int.parse(retrievedNam19)),
          unitz('21', int.parse(retrievedNam21)-int.parse(retrievedNam20)),
          unitz('22', int.parse(retrievedNam22)-int.parse(retrievedNam21)),
          unitz('23', int.parse(retrievedNam23)-int.parse(retrievedNam22)),
          unitz('24', int.parse(retrievedNam24)-int.parse(retrievedNam23)),
          unitz('25', int.parse(retrievedNam25)-int.parse(retrievedNam24)),
          unitz('26', int.parse(retrievedNam26)-int.parse(retrievedNam25)),
          unitz('27', int.parse(retrievedNam27)-int.parse(retrievedNam26)),
          unitz('28', int.parse(retrievedNam28)-int.parse(retrievedNam27)),
        ],
        xValueMapper: (unitz dataz, _) => dataz.monthz,
        yValueMapper: (unitz dataz, _) => dataz.valuez,
        // Enable data label
        dataLabelSettings: DataLabelSettings(isVisible: true)

    );}
    }}}}
    }()) ,
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