import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_lern/energy.dart';
//import 'package:flutter_svg/svg.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular", fontSize: 14, color: Colors.white);

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: menu(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('Energy Meter',
              style: TextStyle(
                  fontSize: 26,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Text('hg8reyghgh'),
          ),
          Container(
            child: Expanded(
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
                        Text('8yghhiyiy'),
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
                        Text('8yghhiyiy'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Text('jhy87uri7yt9o8'),
          ),
          Container(
            child: Expanded(
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
                        Text('8yghhiyiy'),
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
                        Text('8yghhiyiy'),
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
