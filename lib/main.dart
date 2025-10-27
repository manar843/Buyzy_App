import 'package:ecommerce_app/view_ui/auth/sign_in.dart';
import 'package:ecommerce_app/view_ui/auth/sign_up.dart';
import 'package:ecommerce_app/view_ui/home/home_screen.dart';
import 'package:ecommerce_app/view_ui/home/tabs/profile/profile_tab.dart';
import 'package:ecommerce_app/view_ui/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        SignUp.routeName: (context) => SignUp(),
        SignIn.routeName: (context) => SignIn(),
        HomeScreen.routeName: (context) => HomeScreen(),
        ProfileTab.routeName: (context) =>ProfileTab(),
      },
    );
  }
}
