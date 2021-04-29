import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_app_lern/energy.dart';

class omescreen extends StatefulWidget {
  static const routeName = '/bhome';

  @override
  _omescreenState createState() => _omescreenState();

}

class _omescreenState extends State<omescreen> {
  String textHolder = "Consumption of this month until now";
  final fb1 = FirebaseDatabase.instance.reference();
  String retrievedName1 = "";
  String retrievedName2 = "";
  String retrievedName3 = "";
  String seconds = "";
  int Time;
  int rem;
  int bal;
  String Datte1 = "";
  String Datte2 = "";
  int a;
  int b;
  int c;
  int MyInt2;
  String unitss = "";



  changeText(String j) {
    setState(() {
      textHolder = j;
    });
  }

  var cardTextStyle = TextStyle(
      fontFamily: "Montserrat Regular", fontSize: 14, color: Colors.white);
  unituntil() {
    var MyInt = int.parse(retrievedName1);
    var MyInt1 = int.parse(retrievedName2);

    print(MyInt1);
    MyInt2 = MyInt - MyInt1;

    print(MyInt2);
    setState(() {
      unitss = "$MyInt2";
    });
  }
  samplefunctionk() {
    final ref = fb1.reference().child("");
    DateTime now = DateTime.now();
    print("${now.second}:${now.microsecond}");
    seconds = "${now.second}";
    Time = int.parse(seconds);
    rem = Time % 5;
    bal = 10;
    //Time - rem;
    //if (now.month >= 10) {
    if (now.month >= 10) {
      Datte1 = "${now.year}${now.month}${now.day}$bal";
      print(Datte1);
      ref.child(Datte1).once().then((DataSnapshot data) {
        setState(() {
          retrievedName1 = data.value;

          // if(retrievedName1=='null') {
          //   retrievedName1 = "30";
          // }
          // else
          //   print("not null");
          // var MyInt = int.parse(retrievedName1);
          // print(MyInt);
          //print(retrievedName1);
        });
        // cost(retrievedName);
      });
    } else {
      Datte1 = "${now.year}0${now.month}${now.day}$bal";
      print(Datte1);
      ref.child(Datte1).once().then((DataSnapshot data) {
        setState(() {
          retrievedName1 = data.value;
          // if(retrievedName1=='null') {
          //   retrievedName1 = "30";
          // }
          // else
          //   print("not null");
          // var MyInt = int.parse(retrievedName1);
          // print(MyInt);

        });
        // cost(retrievedName);
      });
    }
    if (now.month >= 10) {
      Datte2 = "${now.year}${now.month - 1}${28}$bal";
      print(Datte2);
      ref.child(Datte2).once().then((DataSnapshot data) {
        setState(() {
          retrievedName2 = data.value;
          // if(retrievedName2=='null') {
          //   retrievedName2 = "10";
          // }
          // else
          //   print("not null");
          // var MyInt1 = int.parse(retrievedName2);
          // print(MyInt1);
          // print(retrievedName2);
        });

        // cost(retrievedName);
      });
    }
    else {
      Datte2 = "${now.year}0${now.month}${now.day}$bal";
      print(Datte2);
      ref.child(Datte2).once().then((DataSnapshot data) {
        setState(() {
          retrievedName2 = data.value;
          // if(retrievedName2=='null') {
          //   retrievedName2 = "10";
          // }
          // else
          //   print("not null");
          // var MyInt1 = int.parse(retrievedName2);
          // print(MyInt1);
        });
        // cost(retrievedName);
      });
    }
    //unituntil();




    //c = b-a;
    //print(c);
  }

  @override
  Widget build(BuildContext context) {



      return Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                // image: DecorationImage(
                //   alignment: Alignment.topCenter,
                //   image: AssetImage('image/logo.jpg'),
                // ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Container(

                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(
                                'https://www.google.com/imgres?imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fb%2Fb4%2FKeerthy_Suresh_at_Mahanati_Success_Meet_image_2.png&imgrefurl=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FKeerthy_Suresh&tbnid=qKZ5JX-McSLeLM&vet=12ahUKEwioltTrq6fsAhWMFHIKHXS3Cd0QMygAegUIARCuAQ..i&docid=6JwNKJn9H1piEM&w=716&h=874&q=keerthy%20suresh&ved=2ahUKEwioltTrq6fsAhWMFHIKHXS3Cd0QMygAegUIARCuAQ'),
                          ),
                          SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('iog97tg8'),
                              Text('huijyuifu'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 30,
                        crossAxisSpacing: 20,
                        primary: false,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[

                                // SvgPicture.network(
                                //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FScalable_Vector_Graphics&psig=AOvVaw3q_Yu9415TAW-S6PBFhdvG&ust=1602328406520000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMipt9Kwp-wCFQAAAAAdAAAAABAJ',
                                //   height: 128,
                                // ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 2, bottom: 8),
                                  child:
                                  Text('Consumption', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.teal,
                                      fontSize: 25,
                                      fontFamily: "Broadway"),),),
                                Padding(padding: EdgeInsets.all(10), child:
                                Center(
                                  child: Text('$textHolder ',
                                      style: TextStyle(fontSize: 20,
                                          fontStyle: FontStyle.italic)),
                                ),),

                              ],
                            ),
                          ),

                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[

                                // SvgPicture.network(
                                //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FScalable_Vector_Graphics&psig=AOvVaw3q_Yu9415TAW-S6PBFhdvG&ust=1602328406520000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMipt9Kwp-wCFQAAAAAdAAAAABAJ',
                                //   height: 128,
                                // ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 2, bottom: 8),
                                  child:
                                  Text('You have to pay', style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.teal,
                                      fontSize: 25,
                                      fontFamily: "Broadway"),),),

                                Padding(padding: EdgeInsets.all(10), child:
                                Center(
                                  child: Text('$textHolder ',
                                      style: TextStyle(fontSize: 20,
                                          fontStyle: FontStyle.italic)),
                                ),),

                              ],

                            ),


                          ),

                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                // SvgPicture.network(
                                //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FScalable_Vector_Graphics&psig=AOvVaw3q_Yu9415TAW-S6PBFhdvG&ust=1602328406520000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMipt9Kwp-wCFQAAAAAdAAAAABAJ',
                                //   height: 128,
                                // ),
                                Text('uidtuipu'),
                                changeText(unitss),

                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                // SvgPicture.network(
                                //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FScalable_Vector_Graphics&psig=AOvVaw3q_Yu9415TAW-S6PBFhdvG&ust=1602328406520000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMipt9Kwp-wCFQAAAAAdAAAAABAJ',
                                //   height: 128,
                                // ),
                                Text('uidtuipu'),

                              ],
                            ),
                          ),
                          // Card(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(8)),
                          //   elevation: 4,
                          //   child: Column(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: <Widget>[
                          //
                          //       // SvgPicture.network(
                          //       //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FScalable_Vector_Graphics&psig=AOvVaw3q_Yu9415TAW-S6PBFhdvG&ust=1602328406520000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMipt9Kwp-wCFQAAAAAdAAAAABAJ',
                          //       //   height: 128,
                          //       // ),
                          //       Text('uidtuipu'),
                          //     ],
                          //   ),
                          // ),
                          // // Card(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(8)),
                          //   elevation: 4,
                          //   child: Column(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: <Widget>[
                          //
                          //       // SvgPicture.network(
                          //       //   'https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FScalable_Vector_Graphics&psig=AOvVaw3q_Yu9415TAW-S6PBFhdvG&ust=1602328406520000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMipt9Kwp-wCFQAAAAAdAAAAABAJ',
                          //       //   height: 128,
                          //       // ),
                          //       Text('uidtuipu'),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
