import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

import 'landing-page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1500), () {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          statusBarColor: Colors.transparent));

      // if(APIs.auth.currentUser!=null){
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => HomeScreen(),),);
      // }
      // else{
      //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>loginScreen(),),);
      // }
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>loginScreen(),),);
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
//       width: double.infinity,
//       child: Container(
//         // splashscreen5Ay (12:60)
//         width: double.infinity,
//         height: 2000*fem,
//         decoration: BoxDecoration (
//           gradient: LinearGradient (
//             begin: Alignment(0, -1),
//             end: Alignment(0, 1),
//             colors: <Color>[Color(0xffff5151), Color.fromRGBO(228, 20, 20, 0.879)],
//             stops: <double>[0, 0.7],
//           ),
//         ),
//         child: Stack(
//           children: [
//             Positioned(
//               // inner19Aq (15:67)
//               left: 0*fem,
//               top: 0*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 610.38*fem,
//                   height: 570.73*fem,
//                   child: Image.asset(
//                     'assets/page-1/images/inner1.png',
//                     width: 621.38*fem,
//                     height: 603.73*fem,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // inner2S9w (13:63)
//               left: 0*fem,
//               top: 0*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 734.68*fem,
//                   height: 745*fem,
//                   child: Image.asset(
//                     'assets/page-1/images/inner2.png',
//                     width: 734.68*fem,
//                     height: 745*fem,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // inner3kAd (15:64)
//               left: 0*fem,
//               top: 0*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 736.2*fem,
//                   height: 745*fem,
//                   child: Image.asset(
//                     'assets/page-1/images/inner3.png',
//                     width: 736.2*fem,
//                     height: 745*fem,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // inner4GPs (15:65)
//               left: 0*fem,
//               top: 0*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 736.2*fem,
//                   height: 745*fem,
//                   child: Image.asset(
//                     'assets/page-1/images/inner4.png',
//                     width: 736.2*fem,
//                     height: 745*fem,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // inner5yZB (15:66)
//               left: -2*fem,
//               top: -2*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 728*fem,
//                   height: 735.18*fem,
//                   child: Image.asset(
//                     'assets/page-1/images/inner5.png',
//                     width: 733.25*fem,
//                     height: 740.18*fem,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // logoVXX (15:69)
//               left: 208*fem,
//               top: 130*fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 114.13*fem,
//                   height: 117.44*fem,
//                   child: Image.asset(
//                     'assets/page-1/images/logo-5nh.png',
//                     width: 114.13*fem,
//                     height: 117.44*fem,
//                   ),
//                 ),
//               ),
//             ),
//            Positioned(
//               left: 30 * fem,
//               top: 460 * fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 241 * fem,
//                   height: 200 * fem,
//                   child: RichText(
//                     text: TextSpan(
//                       style: GoogleFonts.pottaOne(
//                         fontSize: 50 * ffem,
//                         fontWeight: FontWeight.w400,
//                         height: 1 * ffem / fem,
//                         color: Colors.white,
//                       ),
//                       children: [
//                         TextSpan(
//                           text: '     RAKT\n',
//                         ),
//                         TextSpan(
//                           text: '  IN ONE CLICK  \n',
//                           style: GoogleFonts.pottaOne(
//                             fontSize: 40 * ffem,
//                             fontWeight: FontWeight.w400,
//                             height: 1.25 * ffem / fem,
//                             color: Color.fromARGB(255, 66, 1, 1),
//                           ),
//                         ),
//                         TextSpan(
//                           text: ' \n',
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//           );
//   }
// }


      width: 410,
      height: 900,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFFFF5151), Color(0x5EEB2834)],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 169.99,
            top: -153,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(0.51),
              child: Container(
                width: 530.03,
                height: 556.96,
                decoration: ShapeDecoration(
                  color: Color(0xFFC50C16),
                  shape: StarBorder.polygon(sides: 3),
                ),
              ),
            ),
          ),
          Positioned(
            left: 195.07,
            top: -153,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(0.51),
              child: Container(
                width: 532.58,
                height: 555.53,
                decoration: ShapeDecoration(
                  color: Color(0xFFFDFDFD),
                  shape: StarBorder.polygon(sides: 3),
                ),
              ),
            ),
          ),
          Positioned(
            left: 219.64,
            top: -154,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(0.51),
              child: Container(
                width: 532.58,
                height: 555.53,
                decoration: ShapeDecoration(
                  color: Color(0xFFEC2834),
                  shape: StarBorder.polygon(sides: 3),
                ),
              ),
            ),
          ),
          Positioned(
            left: 240.05,
            top: -149,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(0.51),
              child: Container(
                width: 532.15,
                height: 550.24,
                decoration: ShapeDecoration(
                  color: Color(0xFFFDFDFD),
                  shape: StarBorder.polygon(sides: 3),
                ),
              ),
            ),
          ),
          Positioned(
            // logoVXX (15:69)
            left: 208 * fem,
            top: 130 * fem,
            child: Align(
              child: SizedBox(
                width: 114.13 * fem,
                height: 117.44 * fem,
                child: Image.asset(
                  'assets/page-1/images/logo-5nh.png',
                  width: 114.13 * fem,
                  height: 117.44 * fem,
                ),
              ),
            ),
          ),
          Positioned(
            left: 30 * fem,
            top: 460 * fem,
            child: Align(
              child: SizedBox(
                width: 241 * fem,
                height: 200 * fem,
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.pottaOne(
                      fontSize: 50 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1 * ffem / fem,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: '         RAKT IN \n        ',
                      ),
                      TextSpan(
                        text: ' ONE CLICK  \n',
                        style: GoogleFonts.pottaOne(
                          fontSize: 40 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 0.5 * ffem / fem,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: ' \n',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





        //       Positioned(
        //         left: 208,
        //         top: 158,
        //         child: Container(
        //           width: 114.13,
        //           height: 117.44,
        //           child: Stack(
        //             children: [
        //               Positioned(
        //                 left: 0,
        //                 top: 0,
        //                 child: Container(
        //                   width: 114.13,
        //                   height: 117.44,
        //                   child: Stack(children: [
        //                       // ,
        //                       ]),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       Positioned(
        //         left: 0,
        //         top: 501,
        //         child: SizedBox(
        //           width: 360,
        //           height: 255,
        //           child: Text.rich(
        //             TextSpan(
        //               children: [
        //                 TextSpan(
        //                   text: '     RAKT\n\n',
        //                   style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 50,
        //                     fontFamily: 'Potta One',
        //                     fontWeight: FontWeight.w400,
        //                     height: 50,
        //                   ),
        //                 ),
        //                 TextSpan(
        //                   text: '  IN ONE CLICK  \n',
        //                   style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 40,
        //                     fontFamily: 'Potta One',
        //                     fontWeight: FontWeight.w400,
        //                     height: 40,
        //                   ),
        //                 ),
        //                 TextSpan(
        //                   text: ' \n',
        //                   style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 50,
        //                     fontFamily: 'Potta One',
        //                     fontWeight: FontWeight.w400,
        //                     height: 50,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // );
 //   }
 // }