import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/dashboard.dart';
import 'package:myapp/page-1/register-page.dart';
import 'package:myapp/utils.dart';

import 'login.dart';
import 'loginscreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // landingpageLVF (1:2)
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffe3f3),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // fulltopAsb (73:120)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                width: double.infinity,
                height: 380 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // topR2q (72:117)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 360 * fem,
                          height: 380 * fem,
                          child: Image.asset(
                            'assets/page-1/images/top.png',
                            width: 360 * fem,
                            height: 380 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // givethegiftoflifedonatebloodGp (5:1529)
                      left: 20 * fem,
                      top: 80 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 300 * fem,
                          height: 256 * fem,
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Monomaniac One',
                                fontSize: 38 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: '   GIVE THE GIFT OF LIFE \n',
                                  style: SafeGoogleFont(
                                    'Monomaniac One',
                                    fontSize: 30 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2666666667 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: '\n DONATE BLOOD',
                                  style: SafeGoogleFont(
                                    'Moul',
                                    fontSize: 30 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2666666667 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                TextSpan(
                                  text: '              \n',
                                  style: SafeGoogleFont(
                                    'Monomaniac One',
                                    fontSize: 30 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2666666667 * ffem / fem,
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
                      // logoQL1 (5:1592)
                      left: 108 * fem,
                      top: 207 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 92.13 * fem,
                          height: 90.38 * fem,
                          child: Image.asset(
                            'assets/page-1/images/logo-XBX.png',
                            width: 92.13 * fem,
                            height: 90.38 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // selectyourrequiredbloodgrouptW (5:1570)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 14 * fem, 83 * fem),
                child: Text(
                  '  SELECT YOUR REQUIRED BLOOD GROUP',
                  style: SafeGoogleFont(
                    'Lemon',
                    fontSize: 16 * ffem,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                // bloodgroupsNw3 (72:118)
                margin:
                    EdgeInsets.fromLTRB(12 * fem, 0 * fem, 12 * fem, 76 * fem),
                width: double.infinity,
                height: 107 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupfeo3J41 (MyrumaaY9XZ8PhEmPXfeo3)
                      width: 88 * fem,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // aR8d (5:1543)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 35 * fem),
                            width: 54 * fem,
                            height: 36 * fem,
                            child: Container(
                              // buttonaQq (5:1541)
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff2b2e4a),
                                borderRadius: BorderRadius.circular(999 * fem),
                              ),
                              child: Center(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => BloodBankWidget(
                                                bloodType: 'ap')));
                                  },
                                  child: Text(
                                    'A+',
                                    style: SafeGoogleFont(
                                      'Lato',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 1 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // buttonUWD (I5:1553;5:1541)
                            width: 64 * fem,
                            height: 36 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff2b2e4a),
                              borderRadius: BorderRadius.circular(999 * fem),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => BloodBankWidget(
                                              bloodType: 'an')));
                                },
                                child: Text(
                                  'AB+',
                                  style: SafeGoogleFont(
                                    'Lato',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupwxwuAdw (MyruGquRFDJchG7htowxWu)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 14 * fem, 0 * fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // buttonhds (I5:1562;5:1541)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 35 * fem),
                            width: 51 * fem,
                            height: 36 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff2b2e4a),
                              borderRadius: BorderRadius.circular(999 * fem),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () { Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => BloodBankWidget(
                                            bloodType: 'a-')));},
                                child: Text(
                                  'A-',
                                  style: SafeGoogleFont(
                                    'Lato',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // buttonZg5 (I5:1550;5:1541)
                            margin: EdgeInsets.fromLTRB(
                                10 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 61 * fem,
                            height: 36 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff2b2e4a),
                              borderRadius: BorderRadius.circular(999 * fem),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () { Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => BloodBankWidget(
                                            bloodType: 'abn')));},
                                child: Text(
                                  'AB-',
                                  style: SafeGoogleFont(
                                    'Lato',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroup332z3r9 (MyruULaGQYCpaEZjHu332Z)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 12 * fem, 0 * fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // buttonP9K (I5:1559;5:1541)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 35 * fem),
                            width: 54 * fem,
                            height: 36 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff2b2e4a),
                              borderRadius: BorderRadius.circular(999 * fem),
                            ),
                            child: Center(
                                child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => BloodBankWidget(
                                            bloodType: 'b+')));
                              },
                              child: Text(
                                'B+',
                                style: SafeGoogleFont(
                                  'Lato',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            )),
                          ),
                          Container(
                            // buttonf6q (I5:1547;5:1541)
                            margin: EdgeInsets.fromLTRB(
                                20 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 56 * fem,
                            height: 36 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff2b2e4a),
                              borderRadius: BorderRadius.circular(999 * fem),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () { Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => BloodBankWidget(
                                            bloodType: 'op')));},
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'O+',
                                    style: SafeGoogleFont(
                                      'Lato',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w700,
                                      height: 0.5 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupdksmke5 (MyrucRB8w3t38HFsqgDkSm)
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // buttonhpD (I5:1556;5:1541)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 35 * fem),
                            width: 51 * fem,
                            height: 36 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff2b2e4a),
                              borderRadius: BorderRadius.circular(999 * fem),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () { Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => BloodBankWidget(
                                            bloodType: 'bn')));},
                                child: Text(
                                  'B-',
                                  style: SafeGoogleFont(
                                    'Lato',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // buttonnqf (I5:1544;5:1541)
                            margin: EdgeInsets.fromLTRB(
                                22 * fem, 0 * fem, 0 * fem, 0 * fem),
                            width: 53 * fem,
                            height: 36 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff2b2e4a),
                              borderRadius: BorderRadius.circular(999 * fem),
                            ),
                            child: Center(
                              child: TextButton(
                                onPressed: () { Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => BloodBankWidget(
                                            bloodType: 'on')));},
                                child: Text(
                                  'O-',
                                  style: SafeGoogleFont(
                                    'Lato',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1 * ffem / fem,
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
              Container(
                // loginregisterfuT (73:119)
                width: double.infinity,
                height: 80 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // login2ED (5:1522)
                      padding: EdgeInsets.fromLTRB(
                          23.5 * fem, 7 * fem, 7.5 * fem, 7 * fem),
                      width: 180 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                      ),
                      child: Container(
                        // hovertruekAD (5:1517)
                        width: double.infinity,
                        height: double.infinity,
                        child: Container(
                          // buttonJxR (5:1518)
                          padding: EdgeInsets.fromLTRB(
                              20 * fem, 5 * fem, 20 * fem, 5 * fem),
                          width: double.infinity,
                          height: 60 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffff5050),
                            borderRadius: BorderRadius.circular(999 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x33252c61),
                                offset: Offset(0 * fem, 7 * fem),
                                blurRadius: 10.5 * fem,
                              ),
                              BoxShadow(
                                color: Color(0x3f8890c2),
                                offset: Offset(0 * fem, 3 * fem),
                                blurRadius: 4 * fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // loginAzd (5:1519)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => RegisterScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Register',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // arrowVGD (5:1520)
                                width: 11.29 * fem,
                                height: 11 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/arrow-4jB.png',
                                  width: 11.29 * fem,
                                  height: 11 * fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // registerzim (5:1523)
                      padding: EdgeInsets.fromLTRB(
                          20 * fem, 5 * fem, 20 * fem, 5 * fem),
                      width: 180 * fem,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                      ),
                      child: Container(
                        // hovertrueXCu (5:1524)
                        width: double.infinity,
                        height: double.infinity,
                        child: Container(
                          // button617 (5:1525)
                          padding: EdgeInsets.fromLTRB(
                              20 * fem, 20 * fem, 20 * fem, 20 * fem),
                          width: double.infinity,
                          height: 60 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffff5050),
                            borderRadius: BorderRadius.circular(999 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x33252c61),
                                offset: Offset(0 * fem, 7 * fem),
                                blurRadius: 10.5 * fem,
                              ),
                              BoxShadow(
                                color: Color(0x3f8890c2),
                                offset: Offset(0 * fem, 3 * fem),
                                blurRadius: 4 * fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // registerwXX (5:1526)
                                margin: EdgeInsets.fromLTRB(
                                    5 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => LoginScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Login',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1 * ffem / fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // arroweRw (5:1527)
                                width: 11.29 * fem,
                                height: 11 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/arrow.png',
                                  width: 11.29 * fem,
                                  height: 11 * fem,
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
