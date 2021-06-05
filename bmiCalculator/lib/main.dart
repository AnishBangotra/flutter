import "package:bmi_calculator/screen/home.dart";
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BMI Calculator',
        debugShowCheckedModeBanner: false,
        //theme: ThemeData(
        // primarySwatch: Colors.yellow,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        //),
        home: AnimatedSplashScreen(
          splash: Image.asset('assets/bm_logo.jpg'),
          splashIconSize: 160,
          nextScreen: HomeSreen(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white,
        ));
  }
}
