 import 'package:flutter/material.dart';

import 'app_color.dart';

class MyThemeData{
  static final ThemeData darkTheme =ThemeData (
    scaffoldBackgroundColor:AppColor.DarkBlueColor,
    primaryColor: AppColor.DarkBlueColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor:Colors.white,
    unselectedItemColor: Colors.black,
    showSelectedLabels: true,
  ) ,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.DarkBlueColor
    ),
    textTheme: ThemeData.dark().textTheme.apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );
  static final ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColor.primaryColor,
      appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primaryColor
  ),
    textTheme: ThemeData.light().textTheme.apply(
      bodyColor: Colors.black,
      displayColor: Colors.black,
    ),
    iconTheme: const IconThemeData(
      color: Colors.grey,
    ),
  );

}