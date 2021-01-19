import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/LoginScreen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              width: _width < 320 ? _width * 0.75 : 320,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 32,
                      // fontWeight: FontWeight.bold,
                      fontFamily: 'Arial',
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Add your details for signup',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //Name
                  TextFormField(
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[400],
                      ),
                      hintText: 'Name',
                      contentPadding: EdgeInsetsDirectional.only(start: 30),
                      filled: true,
                      fillColor: Colors.grey[200],
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey[200]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //Email
                  TextFormField(
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 13, color: Colors.grey[400]),
                      hintText: 'Email',
                      contentPadding: EdgeInsetsDirectional.only(start: 30),
                      filled: true,
                      fillColor: Colors.grey[200],
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey[200]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //Mobile No
                  TextFormField(
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 13, color: Colors.grey[400]),
                      hintText: 'Mobile No',
                      contentPadding: EdgeInsetsDirectional.only(start: 30),
                      filled: true,
                      fillColor: Colors.grey[200],
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey[200]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //Address
                  TextFormField(
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 13, color: Colors.grey[400]),
                      hintText: 'Address',
                      contentPadding: EdgeInsetsDirectional.only(start: 30),
                      filled: true,
                      fillColor: Colors.grey[200],
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey[200]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 13, color: Colors.grey[400]),
                      contentPadding: EdgeInsetsDirectional.only(start: 30),
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.grey[200],
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.grey[200]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 13, color: Colors.grey[400]),
                      contentPadding: EdgeInsetsDirectional.only(start: 30),
                      hintText: 'Confirm Password',
                      filled: true,
                      fillColor: Colors.grey[200],
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.grey[200]),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: _width < 320 ? _width * 0.75 : 320,
                    child: RaisedButton(
                      color: Colors.amber[900],
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.amber[900]),
                      ),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return LoginScreen();
                            }),
                          );
                        },
                        child: Text(
                          'Login',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
