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
import 'package:flutter_app_lern/bargraph.dart';
class MyHome extends StatefulWidget {
  static const routeName = '/linegraph';
// ignore: prefer_const_constructors_in_immutable
  MyHome({Key key}) : super(key: key);

  @override
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> {
  final fb = FirebaseDatabase.instance.reference();

  var _value = "1";
  var _value2 = "2";
  String yesterday="5";
  String retrievedNam0="5";
  String retrievedNam1="5";
  String retrievedNam2="5";
  String retrievedNam3="5";
  String retrievedNam4="5";
  String retrievedNamz="5";
  String retrievedNama="5";
  String retrievedNamb="5";
  String retrievedNamc="5";
  String retrievedNamd="5";
  String Datte0 = "";
  String Datte1 = "";
  String Datte2 = "";
  String Datte3 = "";
  String Datte4 = "";
  String Dattez = "";
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
  int monthusr1 = 02;
  int monthusr2 =01;
  int yearusr=2021;
  String usrDate = "";
  int sub;
  int demonth;


  DropdownButton _normalDown() => DropdownButton<String>(
    items: [
      DropdownMenuItem<String>(value: "1", child: Text("January"),),
      DropdownMenuItem<String>(value: "2", child: Text("February"),),
      DropdownMenuItem<String>(value: "3", child: Text("March"),),
      DropdownMenuItem<String>(value: "4", child: Text("April"),),
      DropdownMenuItem<String>(value: "5", child: Text("May"),),
      DropdownMenuItem<String>(value: "6", child: Text("June"),),
      DropdownMenuItem<String>(value: "7", child: Text("July"),),
      DropdownMenuItem<String>(value: "8", child: Text("August"),),
      DropdownMenuItem<String>(value: "9", child: Text("September"),),
      DropdownMenuItem<String>(value: "10", child: Text("October"),),
      DropdownMenuItem<String>(value: "11", child: Text("November"),),
      DropdownMenuItem<String>(value: "12", child: Text("December"),),
    ],
    onChanged: (value) {
      setState(() {
        _value = value;
        monthusr1 = int.parse(value);
      });
    },
    value: _value,
  );

  DropdownButton _normal2Down() => DropdownButton<String>(
    items: [
      DropdownMenuItem<String>(value: "1", child: Text("January"),),
      DropdownMenuItem<String>(value: "2", child: Text("February"),),
      DropdownMenuItem<String>(value: "3", child: Text("March"),),
      DropdownMenuItem<String>(value: "4", child: Text("April"),),
      DropdownMenuItem<String>(value: "5", child: Text("May"),),
      DropdownMenuItem<String>(value: "6", child: Text("June"),),
      DropdownMenuItem<String>(value: "7", child: Text("July"),),
      DropdownMenuItem<String>(value: "8", child: Text("August"),),
      DropdownMenuItem<String>(value: "9", child: Text("September"),),
      DropdownMenuItem<String>(value: "10", child: Text("October"),),
      DropdownMenuItem<String>(value: "11", child: Text("November"),),
      DropdownMenuItem<String>(value: "12", child: Text("December"),),
    ],
    onChanged: (value) {
      setState(() {
        _value2 = value;
        demonth = int.parse(value);
       sub= monthusr1 - demonth;
        if (sub<=0) {
          yearusr=yearusr-1;
          monthusr2 = int.parse(value);
          print("$monthusr2");
        } else {
          monthusr2 = int.parse(value);
          print("$monthusr2");
        }
      });
    },
    value: _value2,
  );

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

    if (monthusr1 >= 10) {
      Datte0 = "${yearusr}${monthusr1}${dayusr}$bal";
      Datte1 = "${yearusr}${monthusr1}${dayusr+7}$bal";
      Datte2 = "${yearusr}${monthusr1}${dayusr+14}$bal";
      Datte3 = "${yearusr}${monthusr1}${dayusr+21}$bal";
      Datte4 = "${yearusr}${monthusr1}${dayusr+28}$bal";

      ref.child(Datte0).once().then((DataSnapshot data) {setState(() {retrievedNam0 = data.value;});});
      ref.child(Datte1).once().then((DataSnapshot data) {setState(() {retrievedNam1 = data.value;});});
      ref.child(Datte2).once().then((DataSnapshot data) {setState(() {retrievedNam2 = data.value;});});
      ref.child(Datte3).once().then((DataSnapshot data) {setState(() {retrievedNam3 = data.value;});});
      ref.child(Datte4).once().then((DataSnapshot data) {setState(() {retrievedNam4 = data.value;});});
    }
    else
      {
        Datte0 = "${yearusr}0${monthusr1}${dayusr}$bal";
        Datte1 = "${yearusr}0${monthusr1}${dayusr+7}$bal";
      Datte2 = "${yearusr}0${monthusr1}${dayusr+14}$bal";
      Datte3 = "${yearusr}0${monthusr1}${dayusr+21}$bal";
      Datte4 = "${yearusr}0${monthusr1}${dayusr+28}$bal";

        ref.child(Datte0).once().then((DataSnapshot data) {setState(() {retrievedNam0 = data.value;});
      ref.child(Datte1).once().then((DataSnapshot data) {setState(() {retrievedNam1 = data.value;});});
        ref.child(Datte2).once().then((DataSnapshot data) {setState(() {retrievedNam2 = data.value;});});
        ref.child(Datte3).once().then((DataSnapshot data) {setState(() {retrievedNam3 = data.value;});});
        ref.child(Datte4).once().then((DataSnapshot data) {setState(() {retrievedNam4 = data.value;});});
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
    bal = 55;
    //Time - rem;

    if (monthusr2 >= 10) {
      Dattez = "${yearusr}${monthusr2}${dayusr}$bal";
      Dattea = "${yearusr}${monthusr2}${dayusr+7}$bal";
      Datteb = "${yearusr}${monthusr2}${dayusr+14}$bal";
      Dattec = "${yearusr}${monthusr2}${dayusr+21}$bal";
      Datted = "${yearusr}${monthusr2}${dayusr+28}$bal";

      ref.child(Dattez).once().then((DataSnapshot data) {setState(() {retrievedNamz = data.value;});});
      ref.child(Dattea).once().then((DataSnapshot data) {setState(() {retrievedNama = data.value;});});
      ref.child(Datteb).once().then((DataSnapshot data) {setState(() {retrievedNamb = data.value;});});
      ref.child(Dattec).once().then((DataSnapshot data) {setState(() {retrievedNamc = data.value;});});
      ref.child(Datted).once().then((DataSnapshot data) {setState(() {retrievedNamd = data.value;});});
    }
    else
      {
        Dattez = "${yearusr}0${monthusr2}${dayusr}$bal";
        Dattea = "${yearusr}0${monthusr2}${dayusr+7}$bal";
      Datteb = "${yearusr}0${monthusr2}${dayusr+14}$bal";
      Dattec = "${yearusr}0${monthusr2}${dayusr+21}$bal";
      Datted = "${yearusr}0${monthusr2}${dayusr+28}$bal";

        ref.child(Dattez).once().then((DataSnapshot data) {setState(() {retrievedNamz = data.value;});
      ref.child(Dattea).once().then((DataSnapshot data) {setState(() {retrievedNama = data.value;});});
        ref.child(Datteb).once().then((DataSnapshot data) {setState(() {retrievedNamb = data.value;});});
        ref.child(Dattec).once().then((DataSnapshot data) {setState(() {retrievedNamc = data.value;});});
        ref.child(Datted).once().then((DataSnapshot data) {setState(() {retrievedNamd = data.value;});});
      });

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: const Text('Graph'),
          backgroundColor: Colors.grey,
          actions: <Widget>[
            FlatButton(
              child: Row(
                children: <Widget>[
                  Text('Bargraph'),
                  Icon(Icons.insert_chart)
                ],
              ),
              textColor: Colors.white,
              onPressed: (){
                Navigator.of(context).pushReplacementNamed(MyHomer.routeName);
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               /* CustomNumberPicker(
                  shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    side: new BorderSide(width: 3.0,color: Colors.blue),),
                  initialValue: 1, maxValue: 0031, minValue: 1, step: 1,
                  onValue: (value)
                  {dayusr = value;
                  print( "$dayusr");},
                ),*/

              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                color: Colors.blue,
                child: _normalDown(),
              ),
                /*
                CustomNumberPicker(
                  shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    side: new BorderSide(width: 3.0,color: Colors.blue),),
                  initialValue: 01, maxValue: 01, minValue: 01, step: 1,
                  onValue: (value)
                  {monthusr1 = value;
                  print( "$monthusr1");},
                ),

                 */
              /*  CustomNumberPicker(
                shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  side: new BorderSide(width: 3.0,color: Colors.blue),),
                initialValue: 2021, maxValue: 2021, minValue: 2020, step: 1,
                onValue: (value)
                {yearusr = value;
                print( "$yearusr");},
                ),
               */
                ]
                ),
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                 /*  CustomNumberPicker(
                     shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                       side: new BorderSide(width: 3.0,color: Colors.red),),
                     initialValue: 1, maxValue: 0031, minValue: 1, step: 1,
                     onValue: (value)
                   {dayusr = value;
                     print( "$dayusr");},
              ),*/

                   SizedBox(height: 10),
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 50),
                     color: Colors.red,
                     child: _normal2Down(),
                   ),
                /*     CustomNumberPicker(
                 shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                   side: new BorderSide(width: 3.0,color: Colors.red),),
              initialValue: 02, maxValue: 02, minValue: 02, step: 1,
                 onValue: (value) {
                   if (value == 1) {
                     value = 12;
                     monthusr2 = value;
                     print("$monthusr2");
                   } else {
                     monthusr2 = value;
                     print("$monthusr2");
                   }
                 }),

                 */
              /*     CustomNumberPicker(
                 shape:RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                   side: new BorderSide(width: 3.0,color: Colors.red),),
                  initialValue: 2021, maxValue: 2021, minValue: 2020, step: 1,
              onValue: (value)
                {yearusr = value;
                    print( "$yearusr");},
                ),
               */
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

            AreaSeries<unitz, String>(
              name: 'current month',
                opacity: 0.4,
                borderColor: Colors.blue,
                borderWidth: 4,
                dataSource: <unitz>[
                  unitz('start', 0),
                  unitz('week 1', int.parse(retrievedNam1)-int.parse(retrievedNam0)),
                  unitz('week 2', int.parse(retrievedNam2)-int.parse(retrievedNam1)),
                  unitz('week 3', int.parse(retrievedNam3)-int.parse(retrievedNam2)),
                  unitz('week 4', int.parse(retrievedNam4)-int.parse(retrievedNam3)),
                  unitz('end', 0),
                ],


                xValueMapper: (unitz dataz, _) => dataz.monthz,
                yValueMapper: (unitz dataz, _) => dataz.valuez,
                // Enable data label
                dataLabelSettings: DataLabelSettings(isVisible: true)
            ),
            AreaSeries<unitz, String>(
              name:'previous month',
                opacity: 0.3,
                borderColor: Colors.red,
                borderWidth: 4,
                dataSource: <unitz>[
                  unitz('start', 0),
                  unitz('week 1', int.parse(retrievedNama)-int.parse(retrievedNamz)),
                  unitz('week 2', int.parse(retrievedNamb)-int.parse(retrievedNama)),
                  unitz('week 3', int.parse(retrievedNamc)-int.parse(retrievedNamb)),
                  unitz('week 4', int.parse(retrievedNamd)-int.parse(retrievedNamc)),
                  unitz('end', 0),
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





      //  Row(
         // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //children: [
          //        RaisedButton(
           //         onPressed: () => (context),
             //       child: Text(
             //         'Select date',
            //          style:
            //          TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            //        ),
            //        color: Colors.blue,
             //     ),
               // RaisedButton(
               //   onPressed: () => (context),
               //   child: Text(
               //     'Select date',
               //     style:
               //     TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              //    ),
             //     color: Colors.red,
             //   ),
      //  ],
    //)
