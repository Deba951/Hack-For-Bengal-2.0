import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // donerdashboardQth (22:97)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 521*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xffb487fd), Color(0xffcc88ce)],
            stops: <double>[0.404, 1],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup16ws5E9 (MyrvfDmA62zNFfK3kt16ws)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.07*fem),
              padding: EdgeInsets.fromLTRB(16.99*fem, 27*fem, 27*fem, 27*fem),
              width: double.infinity,
              height: 210.93*fem,
              decoration: BoxDecoration (
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/page-1/images/vector.png',
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup5t1jjJh (MyrvkJT2Q2X1SqyT555T1j)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 65.93*fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // hellonameSyo (62:25)
                          margin: EdgeInsets.fromLTRB(0.01*fem, 0*fem, 0*fem, 2*fem),
                          child: Text(
                            'HELLO, NAME',
                            style: SafeGoogleFont (
                              'Lemon',
                              fontSize: 30*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3075*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // logo9NR (64:96)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 78.93*fem),
                    width: 69*fem,
                    height: 78*fem,
                    child: Image.asset(
                      'assets/page-1/images/logo.png',
                      width: 69*fem,
                      height: 78*fem,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              // selectoneormanyitsuptoyouepy (65:114)
              child: Container(
                constraints: BoxConstraints (
                  maxWidth: 294*fem,
                ),
                child: Text(
                  'SELECT ONE OR MANY\nIT’S UP-TO YOU',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Lemon',
                    fontSize: 25*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.3075*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}