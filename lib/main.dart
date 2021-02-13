import 'package:flutter_app_lern/datepick.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_lern/Switches.dart';
import 'package:flutter_app_lern/graphenergy.dart';
import 'package:provider/provider.dart';
import 'values.dart';
//import 'package:flutter_app_lern/value.dart';
import 'home_screen.dart';
import 'loginpage.dart';
import 'signuppage.dart';
import 'models/authentication.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_lern/energy.dart';
import 'package:flutter_app_lern/loginpage.dart';
import 'package:flutter_app_lern/signuppage.dart';
//import 'Home.dart';
//import 'package:flutter_app_lern/view.dart';
import 'package:flutter/services.dart';
import 'curve.dart';
import 'baseHome.dart';
import 'graph.dart';
import 'dart:async';
import 'dart:convert';
import 'Home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'calendar.dart';
import 'package:flutter_app_lern/newgraph.dart';
import 'package:flutter_app_lern/bargraph.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Authentication(),
        )
      ],
      child: MaterialApp(
        title: 'Energy meter,home automation,security',
        theme: ThemeData(
          primaryColor: Colors.green,
        ),
        home: Scaffold(
          body: Center(
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                // image: DecorationImage(
                // image: AssetImage('image/Logoo.jpg'),
                // fit: BoxFit.cover)
              ),
              child:
              Stack(children:[
                //DatePickerDemo()
               // MyHome()
               // MyHomer()
                energy()
                //CurvedShape(),
               //HomePage(),

                // Register(),
                //Calendar()
                //Switches()
              ]
              ),
            ),
          ),
        ),
        //LoginScreen(),
        routes: {
          SignupScreen.routeName: (ctx)=> SignupScreen(),
          LoginScreen.routeName: (ctx)=> LoginScreen(),
          HomeScreen.routeName: (ctx)=> HomeScreen(),
          Homescreen.routeName: (ctx)=> Homescreen(),
          energy.routeName: (ctx)=> energy(),
          MyHome.routeName: (ctx)=> MyHome(),
          MyHomer.routeName: (ctx)=> MyHomer(),

        },
      ),
    );
  }
}


