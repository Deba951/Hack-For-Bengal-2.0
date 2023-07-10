import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/page-1/register-page.dart';

import '../utils.dart';
import 'donor_home.dart';

class DonerLoginScreen extends StatefulWidget {
  @override
  State<DonerLoginScreen> createState() => _DonerLoginScreenState();
}

class _DonerLoginScreenState extends State<DonerLoginScreen> {
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  void initState() {
    super.initState();
    _phoneController.text = '';
    _passwordController.text = ''; // Fetch the current position when the widget initializes
  }

  Future<void> _loginUser() async {
    final phone = _phoneController.text;
    final password = _passwordController.text;

    final userSnapshot = await FirebaseFirestore.instance
        .collection('user')
        .where('phone', isEqualTo: phone)
        .limit(1)
        .get();
print(phone);
    if (userSnapshot.docs.isNotEmpty) {
      final userData = userSnapshot.docs[0].data();
      final storedPassword = userData['password'];

      if (password == storedPassword) {
        // Password matched, proceed with login
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Login successful')),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => BloodDonationWidget(phoneNumber:_phoneController.text),
          ),
        );
        // Add your navigation logic here
      } else {
        // Password didn't match
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Invalid password')),
        );
      }
    } else {
      // User not found
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User not found')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // loginPtM (99:168)
          width: double.infinity,
          height: 800 * fem,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, -1),
              end: Alignment(0, 1),
              colors: <Color>[
                Color(0xffd795ff),
                Color(0xffff7ab2),
                Color(0xffff4a6a),
                Color(0xffff0000)
              ],
              stops: <double>[0, 0.24, 0.583, 1],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                // pendcricleGSM (99:169)
                left: 54.7825927734 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 304.15 * fem,
                    height: 369 * fem,
                    child: Image.asset(
                      'assets/page-1/images/pend-cricle.png',
                      width: 304.15 * fem,
                      height: 369 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // criclevmo (99:182)
                left: 30 * fem,
                top: 295 * fem,
                child: Align(
                  child: SizedBox(
                    width: 303 * fem,
                    height: 486.76 * fem,
                    child: Image.asset(
                      'assets/page-1/images/cricle.png',
                      width: 303 * fem,
                      height: 486.76 * fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle1EXb (99:185)
                left: 55 * fem,
                top: 300 * fem,
                child: Align(
                  child: SizedBox(
                    width: 259 * fem,
                    height: 450 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10 * fem),
                        gradient: LinearGradient(
                          begin: Alignment(0, -1),
                          end: Alignment(0, 1),
                          colors: <Color>[
                            Color(0x71ffe4e4),
                            Color(0x71ffc1c1),
                            Color(0x71ff6666),
                            Color(0x71fa3d5f),
                            Color(0x71ffffff)
                          ],
                          stops: <double>[0, 0.198, 0.431, 0.76, 1],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // welcomebacks4m (99:186)
                left: 110.5 * fem,
                top: 350.5 * fem,
                child: Center(
                  child: Align(
                    child: SizedBox(
                      width: 149 * fem,
                      height: 74 * fem,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w900,
                            height: 1.171875 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                          children: [
                            TextSpan(
                              text: 'WELCOME BACK',
                              style: SafeGoogleFont(
                                'Lemon',
                                fontSize: 28 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3075 * ffem / fem,
                                color: Color(0xff001652),
                              ),
                            ),
                            TextSpan(
                              text: ' 🩸',
                              style: SafeGoogleFont(
                                'Lemon',
                                fontSize: 28 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3075 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // rectangle67mj (99:196)
                left: 82 * fem,
                top: 450 * fem,
                child: Align(
                  child: SizedBox(
                    width: 206 * fem,
                    height: 43 * fem,
                    child: TextField(
                      controller:  _phoneController ,
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Phone Number'),

                      //controller: (){},
                    ),
                  ),
                ),
              ),
              Positioned(
                // fluentmail24filledsuK (99:199)
                left: 82 * fem,
                top: 510.5 * fem,
                child: Align(
                  child: SizedBox(
                    width: 206 * fem,
                    height: 43 * fem,
                    child: TextFormField(
                         controller:  _passwordController ,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Enter Password'),
                    ),
                  ),
                ),
              ),
              Positioned(
                // image3Hi9 (99:204)
                left: 137 * fem,
                top: 40 * fem,
                child: Align(
                  child: SizedBox(
                    width: 203 * fem,
                    height: 288 * fem,
                    child: Image.asset(
                      'assets/page-1/images/image-3.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                // image1CaD (99:205)
                left: 1 * fem,
                top: 7 * fem,
                child: Align(
                  child: SizedBox(
                    width: 272 * fem,
                    height: 323 * fem,
                    child: Image.asset(
                      'assets/page-1/images/image-1.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                // roundbuttonRLV (99:311)
                left: 122 * fem,
                top: 600 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      8.5 * fem, 0 * fem, 8.5 * fem, 0 * fem),
                  width: 122 * fem,
                  height: 56 * fem,
                  child: Container(
                    // button8kh (99:309)
                    width: double.infinity,
                    height: 60 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff021e34),
                      borderRadius: BorderRadius.circular(999 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x26252c61),
                          offset: Offset(0 * fem, 5 * fem),
                          blurRadius: 7.5 * fem,
                        ),
                        BoxShadow(
                          color: Color(0x338890c2),
                          offset: Offset(0 * fem, 2 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {

                          _loginUser();


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
                  ),
                ),
              ),
              Positioned(
                // informativebuttonBDB (99:315)
                left: 100 * fem,
                top: 700 * fem,
                child: Container(
                  width: 168 * fem,
                  height: 34 * fem,
                  child: Container(
                    // button7Mj (99:313)
                    padding: EdgeInsets.fromLTRB(
                        6 * fem, 5 * fem, 15 * fem, 5 * fem),
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xfffcb0c2),
                      borderRadius: BorderRadius.circular(999 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // tagdL5 (99:316)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: 86 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff2b2e4a),
                            borderRadius: BorderRadius.circular(999 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'NEW HERE? ',
                              style: SafeGoogleFont(
                                'Lato',
                                fontSize: 10 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1 * ffem / fem,
                                letterSpacing: 0.6 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => RegisterScreen(),
                              ),
                            );
                          },
                          child: Text(
                            // signupuoP (99:314)
                            'Sign Up',
                            style: SafeGoogleFont(
                              'Lato',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.8 * ffem / fem,
                              color: Color(0xff2b2e4a),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // logo4AV (99:318)
                left: 12 * fem,
                top: 10 * fem,
                child: Align(
                  child: SizedBox(
                    width: 61 * fem,
                    height: 66 * fem,
                    child: Opacity(
                      opacity: 0.7,
                      child: Image.asset(
                        'assets/page-1/images/logo-iiM.png',
                        width: 61 * fem,
                        height: 66 * fem,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
