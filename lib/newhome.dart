import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:firebase_database/firebase_database.dart';

class Homescreenk extends StatefulWidget {
  static const routeName = '/bhome';
  @override
  _HomescreenkState createState() => _HomescreenkState();
}

class _HomescreenkState extends State<Homescreenk> {
  String textHolder="Consumption of this month until now";
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
  String costs3 = "";
  double unit = 180;
  String textHolder1 = 'unit';
  String textHolder2 = 'rs';
  int bal;
  int rem;
  double readingUnit = 0;
  double priceElectricity = 0;
  double monthlypriceElectricity = 0;
  double monthlypriceElectricity2 = 0;
  double monthlypriceElectricity3 = 0;
  int retrieve;
  int values;
  int key = 2021011707;
  int currentunit;
  int previousunit;
  int today;
  int month;

  double day;
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




  currentfunction() {
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
    var size = MediaQuery.of(context).size;

    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular", fontSize: 14, color: Colors.white);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
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
                    height: 64,
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
                              Padding(padding: EdgeInsets.only(top:2,bottom: 8),
                                child:
                                Text('Consumption',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: Colors.teal,
                                    fontSize: 25,
                                    fontFamily: "Broadway"),),),
                              Padding(padding: EdgeInsets.all(10),child:
                              Center(
                                child: Text('$textHolder ',
                                    style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic)),
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
                              Padding(padding: EdgeInsets.only(top:2,bottom: 8),
                                child:
                                Text('You have to pay',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    color: Colors.teal,
                                    fontSize: 25,
                                    fontFamily: "Broadway"),),),
                              Padding(padding: EdgeInsets.all(10),child:
                              Center(
                                child: Text('$textHolder ',
                                    style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic)),
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

                              //child: GestureDetector(
                              //onTap: () =>{
                              //previousfuntion(),

                              //changeText('$previousunit'),


                              // },
                            ],
                          ),

                        )
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