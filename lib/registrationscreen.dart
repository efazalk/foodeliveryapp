import 'package:flutter/material.dart';
// import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Registrationscreen extends StatelessWidget {
  Registrationscreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _height;
    double _width;
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0, 209.0),
            child:
                // Adobe XD layer: 'Rectangle Main' (shape)Layout builder
                Container(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48.0),
                color: const Color(0xff14405d),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          // Adobe XD layer: 'TextField yourname' (shape)
          Transform.translate(
            offset: Offset(24.0, 281.0),
            child: Container(
              width: 370,
              height: 54.0,
              child: TextFormField(
                decoration: new InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                      borderSide:
                          BorderSide(color: Color(0xff4f6f85), width: 2.0),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.white70),
                    hintText: "Type in your name",
                    fillColor: Color(0xff14405d)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 250.0),
            child: Text(
              'Your name',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Adobe XD layer: 'TextField email' (shape)
          Transform.translate(
            offset: Offset(24.0, 394.0),
            child: Container(
              width: 367.0,
              height: 54.0,
              child: TextFormField(
                decoration: new InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xff4f6f85),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.white70),
                    hintText: "Type in your E-mail Address",
                    fillColor: Color(0xff14405d)),
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(9.0),
              //   color: const Color(0xff14405d),
              //   border: Border.all(width: 1.0, color: const Color(0xff4f6f85)),
              // ),
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 365.0),
            child: Text(
              'E-mail address',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Adobe XD layer: 'TextField password' (shape)
          Transform.translate(
            offset: Offset(24.0, 507.0),
            child: Container(
              width: 367.0,
              height: 54.0,
              child: TextFormField(
                obscureText: true,
                decoration: new InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xff4f6f85),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.white70),
                    hintText: "Type in your password",
                    fillColor: Color(0xff14405d)),
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(9.0),
              //   color: const Color(0xff14405d),
              //   border: Border.all(width: 1.0, color: const Color(0xff4f6f85)),
              // ),
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 475.0),
            child: Text(
              'Password',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Adobe XD layer: 'TextField confirm' (shape)
          Transform.translate(
            offset: Offset(24.0, 620.0),
            child: Container(
              width: 367.0,
              height: 54.0,
              child: TextFormField(
                obscureText: true,
                decoration: new InputDecoration(
                    enabledBorder: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(10.0),
                      ),
                      borderSide: BorderSide(
                        color: Color(0xff4f6f85),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.white70),
                    hintText: "Confirm your password",
                    fillColor: Color(0xff14405d)),
              ),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(9.0),
              //   color: const Color(0xff14405d),
              //   border: Border.all(width: 1.0, color: const Color(0xff4f6f85)),
              // ),
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 590.0),
            child: Text(
              'Confirm password',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 13,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Adobe XD layer: 'Register Button' (group)
          Transform.translate(
            offset: Offset(59.9, 718.0),
            child: SizedBox(
              width: 295.0,
              height: 48.0,
              child: RaisedButton(
                color: Color(0xff3075ff),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  // side: BorderSide(color: Colors.red),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
              ),
            ),

            // child: Stack(
            //   children: <Widget>[
            //     Pinned.fromSize(
            //       bounds: Rect.fromLTWH(0.0, 0.0, 295.0, 48.0),
            //       size: Size(295.0, 48.0),
            //       pinLeft: true,
            //       pinRight: true,
            //       pinTop: true,
            //       pinBottom: true,
            //       child:
            //           // Adobe XD layer: 'Rectangle Register' (shape)
            //           Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20.0),
            //           color: const Color(0xff3075ff),
            //         ),
            //       ),
            //     ),
            //     Pinned.fromSize(
            //       bounds: Rect.fromLTWH(120.0, 15.0, 56.0, 16.0),
            //       size: Size(295.0, 48.0),
            //       fixedWidth: true,
            //       fixedHeight: true,
            //       child: Text(
            //         'Register',
            //         style: TextStyle(
            //           fontFamily: 'Arial',
            //           fontSize: 14,
            //           color: const Color(0xffffffff),
            //           fontWeight: FontWeight.w700,
            //           height: 0.8571428571428571,
            //         ),
            //         textAlign: TextAlign.center,
            //       ),
            //     ),
            //   ],
            // ),
            // ),
          ),
          // Adobe XD layer: 'Text Create Account' (group)
          Transform.translate(
            offset: Offset(-2.8, 120.0),
            child: SizedBox(
              width: 322.0,
              child: Text(
                'Create a new account',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 26,
                  color: const Color(0xff14405d),
                  fontWeight: FontWeight.w700,
                  height: 0.46153846153846156,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // Adobe XD layer: 'Text Please provide u' (group)
          Transform.translate(
            offset: Offset(10.0, 150.0),
            child: SizedBox(
              width: 338.0,
              child: Text(
                'Please provide us with your details to register',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 14,
                  color: const Color(0xff14405d),
                  height: 0.8571428571428571,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30.6, 76.6),
            child: SvgPicture.string(
              _svg_a133gh,
              allowDrawingOutsideViewBox: true,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_a133gh =
    '<svg viewBox="30.6 76.6 10.7 17.0" ><path transform="translate(-210.0, 4.33)" d="M 251.2620849609375 72.25599670410156 C 250.6569366455078 72.25599670410156 240.6051025390625 80.75039672851563 240.6051025390625 80.75039672851563 L 244.1544799804688 83.57951354980469 L 251.2620849609375 89.24478149414063" fill="none" stroke="#14405d" stroke-width="3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
