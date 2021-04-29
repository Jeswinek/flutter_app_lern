import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_lern/newgraph.dart';
import 'package:flutter_app_lern/calendar.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_app_lern/energy.dart';

class enePage extends StatefulWidget {
  @override
  _enePageState createState() => _enePageState();
}

class _enePageState extends State<enePage> {
  final fb = FirebaseDatabase.instance.reference();
  static var retrievedName = "";
  static var retrievedName2 = "";
  static var retrievedName3 = "";
  double units;
  String name = "";
  String Times = "";
  String k = "";
  String Datte = "";
  String Datte2 ="";
  String Datte3 ="";
  int Time; //its poornesh created time
  String y = "";
  String p = "";
  String seconds = "";
  var ref;
  String costs = "";
  String costs2 = "";
  double unit = 180;
  String textHolder = 'unit';
  String textHolder2 = 'rs';
  int bal;
  int rem;
  double readingUnit = 0;
  double priceElectricity = 0;
  double monthlypriceElectricity = 0;
  double monthlypriceElectricity2 = 0;
  int retrieve;
  int values;
  int key = 2021011707;
  int currentunit;
  int previousunit;
  int today;
  int tday;

  changeText(String j) {
    setState(() {
      textHolder = j;
    });
  }
  changeText2(String i){
    setState(() {
      textHolder2 = i;
    });
  }
  average(){
    DateTime now = DateTime.now();
    today = now.day;
    if(today >=0 && today <=1 ){

  }else if(today >=2 && today <=2){

    }

  }
  monthlyprice() {
    if (currentunit >= 0 && currentunit <= 50) {
      monthlypriceElectricity = unit * 2.90;
    }
    else if (currentunit >= 51 && currentunit <= 100) {
      monthlypriceElectricity = (50 * 2.90) + (unit - 50) * 3.70;
    } else if (currentunit >= 101 && currentunit <= 150) {
      monthlypriceElectricity =
          (50 * 2.90) + (100 * 3.70) + (currentunit - 100) * 4.80;
    } else if (currentunit >= 151 && currentunit <= 200) {
      monthlypriceElectricity =
          (50 * 2.90) + (100 * 3.70) + (150 * 4.80) + (currentunit - 150) * 6.40;
    } else if (currentunit >= 201) {
      monthlypriceElectricity =
          (50 * 2.90) + (100 * 3.70) + (150 * 4.80) + (250 * 6.40) +
              (currentunit - 250) * 7.50;
    }
    else
      print("unit doesnot calculated");
    setState(() {
      costs = "$monthlypriceElectricity";

    });
  }
  monthlyprice2(){
    if (previousunit >= 0 && previousunit <= 50) {
      monthlypriceElectricity2 = unit * 2.90;
    }
    else if (previousunit >= 51 && previousunit <= 100) {
      monthlypriceElectricity2 = (50 * 2.90) + (unit - 50) * 3.70;
    } else if (previousunit >= 101 && previousunit <= 150) {
      monthlypriceElectricity2 =
          (50 * 2.90) + (100 * 3.70) + (previousunit - 100) * 4.80;
    } else if (previousunit >= 151 && previousunit <= 200) {
      monthlypriceElectricity2 =
          (50 * 2.90) + (100 * 3.70) + (150 * 4.80) + (previousunit - 150) * 6.40;
    } else if (previousunit >= 201) {
      monthlypriceElectricity2 =
          (50 * 2.90) + (100 * 3.70) + (150 * 4.80) + (250 * 6.40) +
              (previousunit - 250) * 7.50;
    }
    else
      print("unit doesnot calculated");
    setState(() {
      costs2 = "$monthlypriceElectricity2";

    });


  }
  samplefunction() {
    final ref = fb.reference().child("");
    DateTime now = DateTime.now();
    print("${now.second}:${now.microsecond}");
    seconds = "${now.second}";
    Time = int.parse(seconds);
    rem = Time % 5;
    bal =55;
    //Time - rem;
    if (now.month >= 10) {
      Datte = "${now.year}${now.month}${now.day}$bal";
      Datte2 = "${now.year}${now.month-1}${31}$bal";
      print(Datte);
      ref.child(Datte).once().then((DataSnapshot data) {
        setState(() {
          retrievedName = data.value;
        });
        // cost(retrievedName);
      });
      ref.child(Datte2).once().then((DataSnapshot data) {
        setState(() {
          retrievedName2 = data.value;
        });
        // cost(retrievedName);
      });
      currentunit=int.parse(retrievedName) -int.parse(retrievedName2);
    } else {
      Datte = "${now.year}0${now.month}${now.day}$bal";
      Datte2 = "${now.year}0${now.month-1}${31}$bal";
      print(Datte);
      ref.child(Datte).once().then((DataSnapshot data) {
        setState(() {
          retrievedName = data.value;
        });
        // cost(retrievedName);
      });
      ref.child(Datte2).once().then((DataSnapshot data) {
        setState(() {
          retrievedName2 = data.value;
        });
        // cost(retrievedName);
      });
      currentunit=int.parse(retrievedName) -int.parse(retrievedName2);
    }
  }
  previousfuntion(){
    final ref = fb.reference().child("");
    DateTime now = DateTime.now();
    print("${now.second}:${now.microsecond}");
    seconds = "${now.second}";
    Time = int.parse(seconds);
    rem = Time % 5;
    bal =55;
    //Time - rem;
    if (now.month >= 10) {
      Datte2 = "${now.year}${now.month-1}${31}$bal";
      Datte3 = "${now.year}${now.month-2}${31}$bal";
      ref.child(Datte2).once().then((DataSnapshot data) {
        setState(() {
          retrievedName2 = data.value;
        });
        // cost(retrievedName);
      });
      ref.child(Datte3).once().then((DataSnapshot data) {
        setState(() {
          retrievedName3 = data.value;
        });
        // cost(retrievedName);
      });
      previousunit=int.parse(retrievedName2) -int.parse(retrievedName3);
    } else {
      Datte2 = "${now.year}0${now.month-1}${31}$bal";
      Datte3 = "${now.year}0${now.month-2}${31}$bal";
      ref.child(Datte2).once().then((DataSnapshot data) {
        setState(() {
          retrievedName2 = data.value;
        });
        // cost(retrievedName);
      });
      ref.child(Datte3).once().then((DataSnapshot data) {
        setState(() {
          retrievedName3 = data.value;
        });
        // cost(retrievedName);
      });
      previousunit=int.parse(retrievedName2) -int.parse(retrievedName3);
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text('home'),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.black,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                color: Colors.white24,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16)),
                                elevation: 16,
                                child: Container(
                                  width: 150,
                                  height: 225,
                                  //color: Colors.transparent,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      // SvgPicture.network(
                                      //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FScalable_Vector_Graphics&psig=AOvVaw3q_Yu9415TAW-S6PBFhdvG&ust=1602328406520000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMipt9Kwp-wCFQAAAAAdAAAAABAJ',
                                      //   height: 128,
                                      // ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 45),
                                        child: Text(
                                          'Consumption',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.white70,
                                              fontSize: 22,
                                              fontFamily: "Broadway"),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 5, 10, 2),
                                        child: Center(
                                          child: Text('$textHolder',
                                              //54
                                              style: TextStyle(
                                                fontSize: 30,
                                                fontStyle: FontStyle.normal,
                                                color: Colors.white,
                                                fontFamily: "Broadway",
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(65, 1, 2, 5),
                                        child: Text(
                                          "unit",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: "Broadway"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                color: Colors.white24,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                elevation: 4,
                                child: Container(
                                  width: 150,
                                  height: 225,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      // SvgPicture.network(
                                      //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FScalable_Vector_Graphics&psig=AOvVaw3q_Yu9415TAW-S6PBFhdvG&ust=1602328406520000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMipt9Kwp-wCFQAAAAAdAAAAABAJ',
                                      //   height: 128,
                                      // ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 15, bottom: 45),
                                        child: Text(
                                          'Price',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.white70,
                                              fontSize: 22,
                                              fontFamily: "Broadway"),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 5, 10, 2),
                                        child: Center(
                                          child: Text('$textHolder2'
                                              //'857.0'
                                              , style: TextStyle(
                                                fontSize: 30,
                                                fontStyle: FontStyle.normal,
                                                color: Colors.white,
                                                fontFamily: "Broadway",
                                                fontWeight: FontWeight.bold,
                                              )),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(65, 1, 2, 5),
                                        child: Text(
                                          "rupees",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: "Broadway"),
                                        ),
                                      ),
                                      //  SizedBox(height: 110,),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                            color: Colors.white10,
                            child: Container(
                              height: 130,

                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    // top: 10, left: 30.0, right: 30.0, bottom: 10),
                                    child: GestureDetector(
                                         onTap: () =>{
                                         average(),
                                          // samplefunction(),
                                           previousfuntion(),
                                           //monthlyprice(),
                                           monthlyprice2(),
                                           changeText('$previousunit'),
                                           changeText2(costs2)

                                         },
                                      //   SwitchOne(),
                                      //  ushafan();

                                      child: ClipOval(
                                        child: Padding(
                                          child: Container(
                                            //color: _colors[_currentIndex],
                                            height:
                                            90.0, // height of the button
                                            width: 90.0, // width of the button
                                            child: Center(
                                              child: Text(
                                                'Previous',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: "Broadway"),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              shape: BoxShape.circle,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                          padding: EdgeInsets.only(
                                              left: 8, right: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    // top: 10, left: 30.0, right: 30.0, bottom: 10),
                                    child: GestureDetector(
                                       onTap: () =>
                                       {
                                         samplefunction(),
                                         //previousfuntion(),
                                         monthlyprice(),
                                        // monthlyprice2(),
                                         changeText('$currentunit'),
                                         changeText2(costs)
                                    },
                                      //   SwitchOne(),
                                      //  ushafan();

                                      child: ClipOval(
                                        child: Padding(
                                          child: Container(
                                            //color: _colors[_currentIndex],
                                            height:
                                            90.0, // height of the button
                                            width: 90.0, // width of the button
                                            child: Center(
                                              child: Text(
                                                'Current',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontFamily: "Broadway"),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              shape: BoxShape.circle,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                          padding: EdgeInsets.only(
                                              left: 2, right: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    // top: 10, left: 30.0, right: 30.0, bottom: 10),
                                    child: GestureDetector(
                        onTap: () =>
                       {
                       samplefunction(),
                       changeText(costs),
                               },
                                      //   SwitchOne(),
                                      //  ushafan();

                                      child: ClipOval(
                                        child: Padding(
                                          child: Container(
                                            //color: _colors[_currentIndex],
                                            height:
                                            90.0, // height of the button
                                            width: 90.0, // width of the button
                                            child: Center(
                                              child: Text(
                                                'Estimated',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle: FontStyle.normal,
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: "Broadway"),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.blue,
                                                width: 2,
                                              ),
                                              shape: BoxShape.circle,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                          padding: EdgeInsets.only(
                                              left: 2, right: 10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                              color: Colors.white24,
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width*0.4,
                                child:InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MyHome()
                                      ),
                                    );

                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) =>Switches(),),
                                    // );
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0),
                                        ),
                                        child: Padding(
                                          child:Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[ Text('Graph View',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  color: Colors.lightGreen[100],
                                                  fontSize: 20,
                                                  letterSpacing: 3,
                                                  fontFamily: "Broadway",
                                                ),),]
                                          ),
                                          padding: EdgeInsets.only(top:14),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                              color: Colors.white24,
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width*0.4,
                                child:InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Calendar()),
                                    );
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) =>Switches(),),
                                    // );
                                  },
                                  child: Column(
                                    children: <Widget>[
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0),
                                        ),
                                        child: Padding(
                                          child: Center(
                                            child: Text('Calender',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle: FontStyle.normal,
                                                  color: Colors.lightGreen[100],
                                                  fontSize: 20,
                                                  letterSpacing: 3,
                                                  fontFamily: "Broadway",
                                                )),
                                          ),
                                          padding: EdgeInsets.only(top:14),
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
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15.0))),
                        color: Colors.white24,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width*0.4,
                          child:InkWell(
                            onTap: () {
                                  launch(
                                      "https://wss.kseb.in/selfservices/quickpay");
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) =>Switches(),),
                              // );
                            },
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8.0),
                                  ),
                                  child: Padding(
                                    child: Center(
                                      child: Text('Online Pay',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.normal,
                                            color: Colors.lightGreen[100],
                                            fontSize: 20,
                                            letterSpacing: 3,
                                            fontFamily: "Broadway",
                                          )),
                                    ),
                                    padding: EdgeInsets.only(top:14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40,)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}