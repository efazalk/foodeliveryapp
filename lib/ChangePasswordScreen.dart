import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
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
                    'New Password',
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
                    'Please enter your new password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //New Password
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 13, color: Colors.grey[400]),
                      hintText: 'New Password',
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
                  SizedBox(height: 30),
                  //Confirm Password
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(fontSize: 13, color: Colors.grey[400]),
                      hintText: 'Confirm Password',
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
                  SizedBox(height: 30),
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
                        'Next',
                        style: TextStyle(color: Colors.white70, fontSize: 15),
                      ),
                    ),
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
