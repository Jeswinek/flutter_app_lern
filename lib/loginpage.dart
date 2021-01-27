import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app_lern/signuppage.dart';
import 'Switches.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'baseHome.dart';
import 'signuppage.dart';
import 'home_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app_lern/signuppage.dart';
import 'Switches.dart';
import 'models/authentication.dart';
class LoginScreen extends StatefulWidget {
  static const routeName = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey();

  Map<String, String> _authData = {
    'email' : '',
    'password': ''
  };

  void _showErrorDialog(String msg)
  {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('An Error Occured'),
          content: Text(msg),
          actions: <Widget>[
            FlatButton(
              child: Text('Okay'),
              onPressed: (){
                Navigator.of(ctx).pop();
              },
            )
          ],
        )
    );
  }

  Future<void> _submit() async
  {
    if(!_formKey.currentState.validate())
    {
      return;
    }
    _formKey.currentState.save();

    try{
      await Provider.of<Authentication>(context, listen: false).logIn(
          _authData['email'],
          _authData['password']
      );
      Navigator.of(context).pushReplacementNamed(Homescreen.routeName);

    } catch (error)
    {
      var errorMessage = 'Authentication Failed. Please try again later.';
      _showErrorDialog(errorMessage);
    }

  }
  @override

  Widget build(BuildContext context) {
    return MaterialApp(title: 'kslfkl',
      home: Scaffold(body:
      Container(child:
      Stack(children:[
        Container( color: Colors.red,
        ),
        Padding(
          padding: EdgeInsets.only(top: 100, left: 10, right: 10),
          child:
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.transparent),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
                // topRight: Radius.circular(50.0),
              ),
              child: Container(
                child: ListView(
                  children: <Widget>[
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 10,
                            top: 10,
                            child: IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                // _emailController.clear();
                                // _passwordController.clear();
                              },
                              icon: Icon(
                                Icons.close,
                                size: 30.0,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      height: 50,
                      width: 50,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 140,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  child: Align(
                                    child: Container(
                                      width: 130,
                                      height: 130,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Theme.of(context).primaryColor),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Positioned(
                                  child: Container(
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                        fontSize: 48,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20, top: 60),
                            child:
                            Form(
                              key: _formKey,
                              child:
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 20, right: 20,bottom: 20),
                                    child:
                                    TextFormField(
                                      validator: (value)
                                      {
                                        if(value.isEmpty || !value.contains('@'))
                                        {
                                          return 'invalid email';
                                        }
                                        return null;
                                      },
                                      onSaved: (value)
                                      {
                                        _authData['email'] = value;
                                      },
                                      //          onSubmitted: (value)=> _email = value,,
                                      //obscureText: true,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                      decoration: InputDecoration(
                                        hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                        hintText:'Email',
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Theme.of(context).primaryColor,
                                            width: 2,
                                          ),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                            color: Theme.of(context).primaryColor,
                                            width: 3,
                                          ),
                                        ),
                                        prefixIcon: Padding(
                                          child: IconTheme(
                                            data: IconThemeData(color: Theme.of(context).primaryColor),
                                            child: Icon(Icons.alternate_email, size: 30,),
                                          ),
                                          padding: EdgeInsets.only(left: 30, right: 10),
                                        ),
                                      ),
                                    ),),


                                  Padding(
                                    padding: EdgeInsets.only(bottom: 20,),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 20, right: 20),
                                      child: TextFormField(
                                        obscureText: true,
                                        validator: (value)
                                        {
                                          if(value.isEmpty || value.length<=5)
                                          {
                                            return 'invalid password';
                                          }
                                          return null;
                                        },
                                        onSaved: (value)
                                        {
                                          _authData['password'] = value;
                                        },
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                        decoration: InputDecoration(hintStyle: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                          hintText:'Password',
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Theme.of(context).primaryColor,
                                              width: 2,
                                            ),
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30),
                                            borderSide: BorderSide(
                                              color: Theme.of(context).primaryColor,
                                              width: 3,
                                            ),
                                          ),
                                          prefixIcon: Padding(
                                            child: IconTheme(
                                              data: IconThemeData(color: Theme.of(context).primaryColor),
                                              child: Icon(Icons.lock, size: 25,),
                                            ),
                                            padding: EdgeInsets.only(left: 30, right: 10),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                bottom: MediaQuery.of(context).viewInsets.bottom),
                            child:
                            Container(child:
                            FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  side: BorderSide(color:  Color(0xFF008000), width: 2)),
                              color:  Color(0xFF008000),
                              textColor: Colors.white,
                              padding: EdgeInsets.all(8.0),
                              onPressed: () {
                                _submit();
                              },
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  fontSize: 27.0,
                                ),
                              ),
                            ),
                              width: MediaQuery.of(context).size.width,
                              height: 60,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                height: MediaQuery.of(context).size.height / 0.5,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],),
      ),
      ),);
  }
}