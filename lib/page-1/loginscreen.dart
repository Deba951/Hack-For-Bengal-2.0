import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/doner-sign-up.dart';
import 'package:myapp/utils.dart';

import 'blood-bank-sign-up.dart';
import 'bloodbanklogin.dart';
import 'login.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // registerpageeSV (6:16)
          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 63*fem),
          width: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffe3f3),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // fulltopMLu (73:145)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 58*fem),
                width: double.infinity,
                height: 380*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // topge5 (73:146)
                      left: 0*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 360*fem,
                          height: 380*fem,
                          child: Image.asset(
                            'assets/page-1/images/top-cyP.png',
                            width: 360*fem,
                            height: 380*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // givethegiftoflifedonatebloodaz (73:151)
                      left: 20*fem,
                      top: 70*fem,
                      child: Align(
                        child: SizedBox(
                          width: 285*fem,
                          height: 266*fem,
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont (
                                'Monomaniac One',
                                fontSize: 38*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1*ffem/fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: '  GIVE THE GIFT OF LIFE\n',
                                  style: SafeGoogleFont (
                                    'Monomaniac One',
                                    fontSize: 30*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2666666667*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: '\nDONATE BLOOD',
                                  style: SafeGoogleFont (
                                    'Moul',
                                    fontSize: 30*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2666666667*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: '              \n',
                                  style: SafeGoogleFont (
                                    'Monomaniac One',
                                    fontSize: 30*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2666666667*ffem/fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: '\n\n\n\n',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // logoC25 (73:152)
                      left: 108*fem,
                      top: 207*fem,
                      child: Align(
                        child: SizedBox(
                          width: 92.13*fem,
                          height: 90.38*fem,
                          child: Image.asset(
                            'assets/page-1/images/logo-M7F.png',
                            width: 92.13*fem,
                            height: 90.38*fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // registerheretobeconeoneofthebo (6:59)
                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 30*fem),
                constraints: BoxConstraints (
                  maxWidth: 347*fem,
                ),
                child: Text(
                  'Welcome Back, On The Track                  OF THE BOON FOR SOCIETY !!!',
                  style: SafeGoogleFont (
                    'Lemon',
                    fontSize: 20*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                // buttonsZWq (73:165)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // donerHxd (6:47)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
                      padding: EdgeInsets.fromLTRB(108.5*fem, 7*fem, 108.5*fem, 7*fem),
                      width: double.infinity,
                      height: 80*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                      ),
                      child: Container(
                        // hovertrue17w (6:48)
                        width: double.infinity,
                        height: double.infinity,
                        child: Container(
                          // buttonAmX (6:49)
                          padding: EdgeInsets.fromLTRB(32*fem, 5*fem, 29.71*fem, 5*fem),
                          width: double.infinity,
                          height: 60*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffff5050),
                            borderRadius: BorderRadius.circular(999*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x33252c61),
                                offset: Offset(0*fem, 7*fem),
                                blurRadius: 10.5*fem,
                              ),
                              BoxShadow(
                                color: Color(0x3f8890c2),
                                offset: Offset(0*fem, 3*fem),
                                blurRadius: 4*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // registerq6y (6:50)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                child: TextButton(
                                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>DonerLoginScreen(),),);},
                                  child: Text(
                                    'DONER',
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
                              Container(
                                // arrow97f (6:51)
                                width: 11.29*fem,
                                height: 11*fem,
                                child: Image.asset(
                                  'assets/page-1/images/arrow-G5X.png',
                                  width: 11.29*fem,
                                  height: 11*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // bloodbanks3f (6:53)
                      padding: EdgeInsets.fromLTRB(85.5*fem, 9.5*fem, 85.5*fem, 9.5*fem),
                      width: double.infinity,
                      height: 85*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                      ),
                      child: Container(
                        // hovertrueBa9 (6:54)
                        width: double.infinity,
                        height: double.infinity,
                        child: Container(
                          // buttonk7T (6:55)
                          padding: EdgeInsets.fromLTRB(32*fem, 5*fem, 29.71*fem, 5*fem),
                          width: double.infinity,
                          height: 60*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffff5050),
                            borderRadius: BorderRadius.circular(999*fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x33252c61),
                                offset: Offset(0*fem, 7*fem),
                                blurRadius: 10.5*fem,
                              ),
                              BoxShadow(
                                color: Color(0x3f8890c2),
                                offset: Offset(0*fem, 3*fem),
                                blurRadius: 4*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // registerorR (6:56)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                child: TextButton(
                                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>BloodBankDonerLoginScreen(),),);},
                                  child: Text(
                                    'BLOOD BANK',
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
                              Container(
                                // arrowLLZ (6:57)
                                width: 11.29*fem,
                                height: 11*fem,
                                child: Image.asset(
                                  'assets/page-1/images/arrow-Rku.png',
                                  width: 11.29*fem,
                                  height: 11*fem,
                                ),
                              ),
                            ],
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
      ),
    );
  }
}