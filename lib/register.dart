import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'SignUp',
      home: Scaffold(body:
      Container(child:
      Stack(children:[
        Container( color: Colors.red,
        ),
        Padding(
          padding: EdgeInsets.only(top: 90, left: 10, right: 10),
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
                                      'SignUp',
                                      style: TextStyle(
                                        fontSize: 44,
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
                            padding: EdgeInsets.only(bottom: 20, top: 40),
                            child: Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: TextField(
                                // controller: controller,
                                // obscureText: obsecure,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                  hintText:'Username',
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
                                      child: Icon(Icons.account_circle, size: 30,),
                                    ),
                                    padding: EdgeInsets.only(left: 30, right: 10),
                                  ),
                                ),
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20,),
                            child: Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: TextField(
                                // controller: controller,
                                // obscureText: obsecure,
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
                                      child: Icon(Icons.email, size: 30,),
                                    ),
                                    padding: EdgeInsets.only(left: 30, right: 10),
                                  ),
                                ),
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 20,),
                            child: Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: TextField(
                                // controller: controller,
                                obscureText: true,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
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
                              ),),
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
                                  side: BorderSide(color:  Color(0xFF80E1C1), width: 2)),
                              color:  Color(0xFF80E1D1),
                              textColor: Colors.white,
                              padding: EdgeInsets.all(8.0),
                              onPressed: () {

                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                //     loginUser()),);
                              },
                              child: Text(
                                'Create New',
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
