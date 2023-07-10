import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/splash-screen.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/landing-page.dart';
import 'package:geolocator/geolocator.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
	return MaterialApp(
		title: 'Flutter',
		debugShowCheckedModeBanner: false,
		scrollBehavior: MyCustomScrollBehavior(),
		theme: ThemeData(
		primarySwatch: Colors.blue,
		),
		home: Scaffold(
		body: SingleChildScrollView(
			child: SplashScreen(),
		),
		),
	);
	}
}
_initializeFirebase() async {
  
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  
  //log('\nNotification Channel Result: $result');
}