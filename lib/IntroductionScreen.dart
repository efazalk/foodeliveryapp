import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/ChangePasswordScreen.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:fooddeliveryapp/ChangePasswordScreen.dart';
import 'package:fooddeliveryapp/model/slide.dart';
import 'package:fooddeliveryapp/widgets/slide_dots.dart';
import 'package:fooddeliveryapp/widgets/slide_item.dart';

class IntroductionScreen extends StatefulWidget {
  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        PageView.builder(
                          onPageChanged: _onPageChanged,
                          scrollDirection: Axis.horizontal,
                          controller: _pageController,
                          itemCount: slideList.length,
                          itemBuilder: (context, i) => SlideItem(i),
                        ),
                        Stack(
                          alignment: AlignmentDirectional.topStart,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 35),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0; i < slideList.length; i++)
                                    if (i == _currentPage)
                                      SlideDots(true)
                                    else
                                      SlideDots(false)
                                ],
                              ),
                            )
                          ],
                        )
                      ]),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: _width < 320 ? _width * 0.75 : 320,
                      child: RaisedButton(
                        color: Colors.amber[900],
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return ChangePasswordScreen();
                            }),
                          );
                        },
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// child: Column(
//             children: [
//               Expanded(
//                 child: Container(
//                   margin: EdgeInsets.symmetric(vertical: 20.0),
//                   height: 200,
//                   child: ListView(
//                     // width: _width < 320 ? _width * 0.75 : 320,
//                     scrollDirection: Axis.horizontal,
//                     children: [
//                       Container(
//                         height: 100,
//                         width: 160,
//                         child: SvgPicture.string(
//                           pic_1,
//                           allowDrawingOutsideViewBox: true,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                       // Container(height: 100, width: 10, child: Divider()),
//                       Container(
//                         height: 100,
//                         width: 160,
//                         child: SvgPicture.string(
//                           pic_2,
//                           allowDrawingOutsideViewBox: true,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                       // Container(height: 100, width: 10, child: Divider()),
//                       Container(
//                         height: 100,
//                         width: 160,
//                         child: SvgPicture.string(
//                           pic_3,
//                           allowDrawingOutsideViewBox: true,
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                       // Container(height: 100, width: 10, child: Divider()),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 child: Text(
//                   'Reset Password',
//                   style: TextStyle(
//                     fontSize: 32,
//                     // fontWeight: FontWeight.bold,
//                     fontFamily: 'Arial',
//                     color: Theme.of(context).accentColor,
//                   ),
//                 ),
//               ),
//               Container(
//                 child: Text(
//                   'Please enter your email to receive a',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Theme.of(context).accentColor,
//                   ),
//                 ),
//               ),
//               Container(
//                 child: Text(
//                   'link to  create a new password via email',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Theme.of(context).accentColor,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//                 width: _width < 320 ? _width * 0.75 : 320,
//                 child: RaisedButton(
//                   color: Colors.amber[900],
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (BuildContext context) {
//                         return ChangePasswordScreen();
//                       }),
//                     );
//                   },
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30.0),
//                     side: BorderSide(color: Colors.amber[900]),
//                   ),
//                   child: Text(
//                     'Next',
//                     style: TextStyle(color: Colors.white70, fontSize: 15),
//                   ),
//                 ),
//               ),
//             ],
//           ),
