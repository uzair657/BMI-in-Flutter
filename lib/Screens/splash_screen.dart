import 'dart:async';

import 'package:bmi/Constents/constents.dart';
import 'package:bmi/Screens/inputPage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static String Id = 'splash';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => InputPage(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMyInActiveCardColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset('images/splash_logo.png'),
                    height: 95.0,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'BMI CALCULATOR',
                    style: TextStyle(fontSize: 25.0),
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
