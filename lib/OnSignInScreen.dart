import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fooddeliveryapp/LoginScreen.dart';

import 'SignupScreen.dart';

// import 'package:fooddeliveryapp/Util/CustomWidgets.dart';
//Screen 1
class OnBoardingSignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height;
    double _width;
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Positioned(
          top: 0,
          child: Container(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Top Shape
                  CustomPaint(
                    size: Size(375.0, 382.0),
                    painter: RPSCustomPainter(),
                  ),
                ]),
          ),
        ),
        Positioned(
          top: -170,
          child: Container(
            child: SvgPicture.string(
              shape_svg,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 135,
          left: 0.0,
          child: SingleChildScrollView(
            child: Container(
              width: _width,
              height: _height,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // SizedBox(
                        //   height: 100,
                        // ),
                        //Main Logo
                        SvgPicture.string(
                          logo_svg,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                        //Spacing
                        SizedBox(
                          height: 20,
                        ),
                        //Main Name
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Meal',
                              style: TextStyle(
                                color: Colors.amber[900],
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.2,
                                fontFamily: "Cabin",
                              ),
                            ),
                            Text(
                              ' Monkey',
                              style: TextStyle(
                                color: const Color(0xff4a4b4d),
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.2,
                                fontFamily: "Cabin",
                              ),
                            )
                          ],
                        ),
                        //Spacing
                        SizedBox(
                          height: 5,
                        ),
                        //Tagline
                        Text(
                          'FOOD DELIVERY',
                          style: TextStyle(
                            color: const Color(0xff4a4b4d),
                            fontSize: 11,
                            fontWeight: FontWeight.w300,
                            fontFamily: "Metropolis",
                            letterSpacing: 1,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Column(children: [
                      Text(
                        'Discover the best foods from over 1,000',
                        style: TextStyle(
                          color: const Color(0xff4a4b4d),
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          fontFamily: "Metropolis",
                          letterSpacing: 0.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'restaurants and fast delivery to your doorstep',
                        style: TextStyle(
                          color: const Color(0xff4a4b4d),
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          fontFamily: "Metropolis",
                          letterSpacing: 0.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    child: FractionallySizedBox(
                      widthFactor: _width * 0.75,
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            width: _width < 320.0 ? _width * 0.75 : 320.0,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.amber[900],
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return LoginScreen();
                                  }),
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                // side: BorderSide(color: Colors.red),
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: _width < 320.0 ? _width * 0.75 : 320.0,
                            height: 50,
                            child: RaisedButton(
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return SignupScreen();
                                  }),
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(
                                    color: Theme.of(context).primaryColor),
                              ),
                              child: Text(
                                'Create An Account',
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

const String logo_svg =
    '''<svg id="Monkey_face" data-name="Monkey face" xmlns="http://www.w3.org/2000/svg" width="103.106" height="105.098" viewBox="0 0 103.106 105.098">
  <g id="Group_873" data-name="Group 873" transform="translate(0)">
    <path id="Path_2736" data-name="Path 2736" d="M782.17,943.052a4.763,4.763,0,1,0-4.763,4.763A4.763,4.763,0,0,0,782.17,943.052Zm-6.3.868a2.183,2.183,0,1,1,2.183-2.183A2.183,2.183,0,0,1,775.871,943.921Z" transform="translate(-740.583 -897.48)" fill="#4a4b4d"/>
    <path id="Path_2737" data-name="Path 2737" d="M826.08,938.289a4.763,4.763,0,1,0,4.763,4.763A4.763,4.763,0,0,0,826.08,938.289Zm-1.536,5.632a2.183,2.183,0,1,1,2.183-2.183A2.183,2.183,0,0,1,824.544,943.921Z" transform="translate(-759.798 -897.48)" fill="#4a4b4d"/>
    <path id="Path_2738" data-name="Path 2738" d="M807.184,983.615c0-3.707-3.005-9.1-6.712-9.1s-6.712,5.394-6.712,9.1,3,3.855,6.712,3.855S807.184,987.322,807.184,983.615Z" transform="translate(-748.919 -911.781)" fill="#4a4b4d"/>
    <path id="Path_2739" data-name="Path 2739" d="M793.826,1012.62c11.079,0,20.06-4.757,20.06-10.626,0-2.259-1.334-4.352-3.6-6.073A6.438,6.438,0,0,1,811.6,999.7c0,5.868-8.981,10.625-20.061,10.625-6.814,0-12.831-1.8-16.457-4.552C777.959,1009.777,785.264,1012.62,793.826,1012.62Z" transform="translate(-741.544 -920.232)" fill="#4a4b4d"/>
    <path id="Path_2740" data-name="Path 2740" d="M747.241,939.659c.4,3.833,1.7,6.771,3.394,7.345a24.413,24.413,0,0,0,6.779,1,18.464,18.464,0,0,1-.824-2.263c-1.7-5.86-.314-11.748,3.124-15.413-1.477-.134-2.969-.209-4.423-.209a13.393,13.393,0,0,0-5.208.632,3.762,3.762,0,0,0-1.257,1.126,7.016,7.016,0,0,1,1.862,1.032c-.041.074-.087.144-.132.219A60.942,60.942,0,0,0,747.241,939.659Z" transform="translate(-730.554 -894.255)" fill="#4a4b4d"/>
    <path id="Path_2741" data-name="Path 2741" d="M844.817,945.411a18.278,18.278,0,0,1-.94,2.6A24.852,24.852,0,0,0,850.9,947c1.688-.574,2.99-3.5,3.392-7.332a61.213,61.213,0,0,0-3.467-6.714,7.97,7.97,0,0,1,1.885-1.082,3.768,3.768,0,0,0-1.258-1.128,13.4,13.4,0,0,0-5.208-.631c-1.468,0-2.973.077-4.462.213C845.067,933.971,846.4,939.691,844.817,945.411Z" transform="translate(-767.879 -894.255)" fill="#4a4b4d"/>
    <path id="Path_2742" data-name="Path 2742" d="M829.115,937.457a21.687,21.687,0,0,0-5.094-8.22,6.245,6.245,0,0,1-.2.7,4.48,4.48,0,0,1-2.247,2.362c-.688.394-.78.47-.85.9l-.081.5a13.445,13.445,0,0,1,3.538,5.478c2.04,5.842,0,11.873-4.563,13.464a6.877,6.877,0,0,1-1.678.359c-.016-.083-.028-.165-.045-.252-.319-1.706-.721-3.414-1.2-5.112a8.4,8.4,0,0,1-4.36,3.859,35.119,35.119,0,0,1-10.848,1.5c-.634,0-1.266-.014-1.893-.038-.055.053-.105.11-.16.162,6.1,4.242,9.947,10.359,9.993,17.186.082,12.936-13.5,23.51-30.349,23.622s-30.567-10.29-30.654-23.226c-.041-6.827,3.723-12.993,9.766-17.313-.146-.135-.285-.281-.427-.422-.53.018-1.063.03-1.6.03a35.117,35.117,0,0,1-10.847-1.5,8.376,8.376,0,0,1-4.333-3.811c-.509,1.851-.933,3.714-1.256,5.575a52.449,52.449,0,0,0-.738,6.575c-.05.895-.066,1.785-.062,2.667.148,22.982,17.2,36.647,40.181,36.5s39.851-14.036,39.7-37.019c0-.8-.033-1.6-.082-2.411a11.106,11.106,0,0,0,3.1-.606C829.11,956.424,832.375,946.794,829.115,937.457Z" transform="translate(-727.273 -893.907)" fill="#4a4b4d"/>
    <path id="Path_2743" data-name="Path 2743" d="M780.786,903.91a12.963,12.963,0,0,1,1.341.567,37.25,37.25,0,0,0,13.613.114,12.988,12.988,0,0,1,3.5-1.318,59.468,59.468,0,0,1,13.787-3.719c-.151-.153-.3-.31-.451-.461-2.067-2.047-10.116-8.344-10.985-9.1-3.011-2.618-11.1-9.227-12.993-19.132a11.913,11.913,0,0,0-2.5,7.2,16.69,16.69,0,0,0,1.887,7.918c-2.182-1.289-6-7.755-6.8-12.375-2.758,4.014-1.924,12.5-.749,14.865-3.214-1.333-5.814-7.087-5.869-9.477-1.614,2.025-3.518,8.755-.562,13.8a40.391,40.391,0,0,0-8.538,6.747A56.759,56.759,0,0,1,780.786,903.91Z" transform="translate(-737.75 -870.861)" fill="#4a4b4d"/>
    <path id="Path_2744" data-name="Path 2744" d="M732.139,953.006a6.831,6.831,0,0,1-1.707-.362c-4.563-1.591-6.6-7.622-4.563-13.464a13.438,13.438,0,0,1,3.538-5.478l-.08-.5c-.07-.431-.162-.506-.85-.9a4.479,4.479,0,0,1-2.247-2.362,6.134,6.134,0,0,1-.2-.7,21.671,21.671,0,0,0-5.094,8.22c-3.261,9.337,0,18.967,7.288,21.511a11.067,11.067,0,0,0,3.137.61A52.541,52.541,0,0,1,732.139,953.006Z" transform="translate(-719.67 -893.907)" fill="#4a4b4d"/>
  </g>
  <path id="Path_2745" data-name="Path 2745" d="M818.573,919.913c-2.7-1.011-15.162.332-15.162.332h0c-7.162.63-14.782,2.921-18.794,5.126-.182.036-.393.079-.65.128a39.507,39.507,0,0,1-15.151,0c-.212-.041-.4-.077-.556-.109-4-2.21-11.644-4.513-18.827-5.144h0s-12.458-1.343-15.163-.332c-1.772.663-1.575,4.274-1.1,5.558.607,1.656,2.8,1.238,3.186,3.6.78,4.787,2.122,15.127,7.156,16.84a33.341,33.341,0,0,0,10.25,1.405,38.043,38.043,0,0,0,12.563-1.925h0c5.5-2.05,6.841-7.838,6.755-12.172a1.886,1.886,0,0,1,1.538-1.885,9.589,9.589,0,0,1,1.773-.215,9.772,9.772,0,0,1,1.832.228,1.887,1.887,0,0,1,1.54,1.885c-.083,4.333,1.256,10.112,6.756,12.16h0a38.045,38.045,0,0,0,12.564,1.925,33.344,33.344,0,0,0,10.25-1.405c5.034-1.713,6.375-12.054,7.156-16.84.385-2.365,2.579-1.946,3.186-3.6C820.148,924.187,820.346,920.576,818.573,919.913ZM765.44,943.92c-5.638,1.949-15.731,2.483-21.085.661-3.1-1.054-4.781-5.975-4.781-11.6,0-4.125,2.286-7.317,4.076-8.108a14.724,14.724,0,0,1,5.958-.79c6.571,0,14.314,1.42,17.994,3.682a5.981,5.981,0,0,1,3.039,4.365C770.822,934.752,771.158,941.943,765.44,943.92Zm43.054.661c-5.353,1.821-15.447,1.287-21.085-.661-5.718-1.977-5.382-9.168-5.2-11.787a5.982,5.982,0,0,1,3.039-4.365c3.68-2.262,11.423-3.682,17.994-3.682a14.728,14.728,0,0,1,5.958.79c1.79.791,4.075,3.983,4.075,8.108C813.275,938.607,811.594,943.528,808.494,944.582Z" transform="translate(-724.872 -890.077)" fill="#fc6011"/>
</svg>
''';

const String top_svg =
    '''<svg xmlns="http://www.w3.org/2000/svg" width="375" height="382.001" viewBox="0 0 375 382.001">
  <path id="Shaped_subtraction" data-name="Shaped subtraction" d="M7657,877h-67a16.991,16.991,0,0,1-16.884-15h-.217a87.437,87.437,0,0,0-172.8,0h-.219A16.988,16.988,0,0,1,7383,877h-67a16.991,16.991,0,0,1-16.885-15H7299V495h375V862h-.118A16.988,16.988,0,0,1,7657,877Z" transform="translate(-7299 -495)" fill="#fc6011"/>
</svg>
''';

const String topsvg =
    '''<svg xmlns="http://www.w3.org/2000/svg" width="375" height="382.001" viewBox="0 0 375 382.001">
  <path id="Shaped_subtraction" data-name="Shaped subtraction" d="M7657,877h-67a16.991,16.991,0,0,1-16.884-15h-.217a87.437,87.437,0,0,0-172.8,0h-.219A16.988,16.988,0,0,1,7383,877h-67a16.991,16.991,0,0,1-16.885-15H7299V495h375V862h-.118A16.988,16.988,0,0,1,7657,877Z" transform="translate(-7299 -495)" fill="#fc6011"/>
</svg>
''';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.amber[900]
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path_0 = Path();
    path_0.moveTo(0.0, 0.0);
    path_0.lineTo(0.0, 352.0);
    path_0.quadraticBezierTo(0.0, 382.0, 30.0, 382.0);
    path_0.quadraticBezierTo(56.0, 382.0, 80.0, 382.0);
    path_0.quadraticBezierTo(110.0, 383.0, 110.0, 352.0);
    path_0.cubicTo(110.0, 320.00, 134.0, 285.0, 191.0, 282.00);
    path_0.cubicTo(244.00, 286.0, 263.0, 322.0, 265.0, 352.0);
    path_0.quadraticBezierTo(266.0, 384.0, 295.0, 382.0);
    path_0.quadraticBezierTo(325.0, 382.0, 345.0, 382.0);
    path_0.quadraticBezierTo(374.0, 381.0, 375.0, 352.0);
    path_0.lineTo(375.0, 0.0);
    path_0.lineTo(0.0, 0.0);
    path_0.close();

    path_0.moveTo(0, size.height / 2);
    path_0.lineTo(size.width, size.height / 2);

    canvas.drawShadow(path_0.shift(Offset(0, 15)),
        Colors.black.withOpacity(0.50), 10.0, true);
    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

const String shape_svg =
    '''<svg xmlns="http://www.w3.org/2000/svg" width="543" height="610" viewBox="0 0 543 610">
  <circle id="Ellipse_3" data-name="Ellipse 3" cx="89" cy="89" r="89" transform="translate(27 104)" fill="#fff" opacity="0.14"/>
  <circle id="Ellipse_5" data-name="Ellipse 5" cx="144.5" cy="144.5" r="144.5" transform="translate(254)" fill="#fff" opacity="0.14"/>
  <circle id="Ellipse_4" data-name="Ellipse 4" cx="52.5" cy="52.5" r="52.5" transform="translate(109 236)" fill="#fff" opacity="0.14"/>
  <circle id="Ellipse_6" data-name="Ellipse 6" cx="9" cy="9" r="9" transform="translate(239 277)" fill="#fff" opacity="0.21"/>
  <circle id="Ellipse_8" data-name="Ellipse 8" cx="6.5" cy="6.5" r="6.5" transform="translate(241 378)" fill="#fff" opacity="0.21"/>
  <circle id="Ellipse_9" data-name="Ellipse 9" cx="10.5" cy="10.5" r="10.5" transform="translate(449 487)" fill="#fff" opacity="0.21"/>
  <circle id="Ellipse_7" data-name="Ellipse 7" cx="14.5" cy="14.5" r="14.5" transform="translate(312 289)" fill="#fff" opacity="0.21"/>
  <circle id="Ellipse_2" data-name="Ellipse 2" cx="116" cy="116" r="116" transform="translate(0 378)" fill="#fff" opacity="0.14"/>
  <path id="Path_2987" data-name="Path 2987" d="M210.606,142c0,4.172-3.712,7.577-8.241,7.577H18.727c-4.529,0-8.241-3.405-8.241-7.577,0-4.155,3.712-7.543,8.241-7.543H202.365C206.894,134.453,210.606,137.841,210.606,142ZM120.158,46.985a9.615,9.615,0,0,0-19.207-.051,76.628,76.628,0,0,1,19.207.051Zm74.817,80.777H26.117a84.691,84.691,0,0,1,168.858,0ZM100.883,57.15S53.548,67.468,39.415,119.878h17.9S67.22,76.169,100.883,57.15Z" transform="translate(301.514 273.176)" fill="#fff" opacity="0.1"/>
</svg>
''';
