import 'dart:async';

import 'package:blood_bank/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      print("Time Up");
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
    });
  }

  double screenHeight;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffe0172b),
      body: Center(
        child: Container(
          child: SvgPicture.asset(
            'images/blood.svg',
            height: screenHeight / 5,
            width: screenHeight / 5,
          ),
        ),
      ),
    );
  }
}
