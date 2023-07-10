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
        // proofupdateYFB (99:263)
        width: double.infinity,
        decoration: BoxDecoration (
          gradient: LinearGradient (
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: <Color>[Color(0xffd796ff), Color(0xffff7ab2), Color(0xfffc5e7b), Color(0xffff4444)],
            stops: <double>[0, 0.337, 0.649, 0.964],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // autogroup9csvQoB (MyrxTAmxEinJiu2Dsw9CSV)
              padding: EdgeInsets.fromLTRB(311*fem, 375*fem, 51*fem, 66*fem),
              width: 676*fem,
              height: 628*fem,
              decoration: BoxDecoration (
                image: DecorationImage (
                  fit: BoxFit.cover,
                  image: AssetImage (
                    'assets/page-1/images/circle-top.png',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupoxzz6AD (MyrxZ5mmPJTmrD8tRZoXzZ)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 31*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // vectortopDVj (99:282)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 228*fem, 10*fem),
                          width: 17*fem,
                          height: 25*fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-top-jGm.png',
                            width: 17*fem,
                            height: 25*fem,
                          ),
                        ),
                        Container(
                          // logoLaM (99:344)
                          width: 69*fem,
                          height: 67*fem,
                          child: Image.asset(
                            'assets/page-1/images/logo-F2q.png',
                            width: 69*fem,
                            height: 67*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // createaccountfsX (99:266)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 160*fem, 0*fem),
                    constraints: BoxConstraints (
                      maxWidth: 154*fem,
                    ),
                    child: Text(
                      'UPDATE \nDETAILS',
                      style: SafeGoogleFont (
                        'Lemon',
                        fontSize: 34*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3075*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupaylmZi1 (MyrxpQfZbjfP2B4vHgayLm)
              padding: EdgeInsets.fromLTRB(34*fem, 72*fem, 0*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // locationtVP (99:276)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.21*fem, 63.29*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 18*fem, 20*fem, 20.71*fem),
                    width: 286.79*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Text(
                      'Location',
                      style: SafeGoogleFont (
                        'Poppins',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.5*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // proofKKo (99:279)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.21*fem, 92*fem),
                    padding: EdgeInsets.fromLTRB(20*fem, 7*fem, 20*fem, 4*fem),
                    width: 286.79*fem,
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(20*fem),
                    ),
                    child: Align(
                      // uploadproofdLV (99:281)
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        child: Container(
                          constraints: BoxConstraints (
                            maxWidth: 66*fem,
                          ),
                          child: Text(
                            'Upload\nProof',
                            style: SafeGoogleFont (
                              'Poppins',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.5*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupfsrd8Y9 (MyrxhQsDmBz3BVfWjyfSrd)
                    margin: EdgeInsets.fromLTRB(70*fem, 0*fem, 0*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(95*fem, 74*fem, 95*fem, 74*fem),
                    width: 434*fem,
                    height: 409*fem,
                    decoration: BoxDecoration (
                      image: DecorationImage (
                        fit: BoxFit.cover,
                        image: AssetImage (
                          'assets/page-1/images/circle-bottem-FCM.png',
                        ),
                      ),
                    ),
                    child: Container(
                      // button39K (I99:283;99:260)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 123*fem, 201*fem),
                      width: 121*fem,
                      height: 60*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff0984e3),
                        borderRadius: BorderRadius.circular(999*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x26252c61),
                            offset: Offset(0*fem, 5*fem),
                            blurRadius: 7.5*fem,
                          ),
                          BoxShadow(
                            color: Color(0x338890c2),
                            offset: Offset(0*fem, 2*fem),
                            blurRadius: 2*fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: SafeGoogleFont (
                            'Montserrat',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}