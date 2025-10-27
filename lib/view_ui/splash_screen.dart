
import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import 'auth/sign_up.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacementNamed(context, SignUp.routeName);
    });
  }

  Widget build(BuildContext context) {
    return   Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image(
              image: AssetImage('assets/images/Splash Screen.png'),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Image(
              image: AssetImage('assets/images/logobuybz.png'),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
              color: AppColor.WhiteColor,
            ),
          ],
        ),
      ),
    );
  }
}
