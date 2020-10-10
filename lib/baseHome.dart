import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
                          backgroundImage:AssetImage('image/Logoo.png'
                                             ),),
                        SizedBox(width: 16),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('KEERTHY M S'),
                            Text('Choondal'),
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
