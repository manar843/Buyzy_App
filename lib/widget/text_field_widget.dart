import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/app_styles.dart';

class TextFieldWidget extends StatelessWidget {
  String title;
  TextStyle? styleTitle;
  Widget? icon;
  Color? colorIcon;
  int? maxLines;
  Color? colorBackground;
  Color? BorderSideColor;

  TextFieldWidget({
    required this.title,
    this.maxLines,
    this.icon,
    this.BorderSideColor,
    this.styleTitle,
    this.colorIcon,
    this.colorBackground,
  });

  @override
  Widget build(BuildContext context) {
    var sizeScreen = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          fillColor: colorBackground ?? Colors.white,
          focusColor: AppColor.mainColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: BorderSideColor ?? AppColor.mainColor,
              width: 1.7,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: BorderSideColor ?? AppColor.mainColor,
              width: 1.7,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: BorderSideColor ?? AppColor.mainColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          prefixIcon: icon,
          prefixIconColor: colorIcon ?? AppColor.mainColor,
          hintText: title,
          hintStyle: styleTitle ?? AppStyles.w50014gray,
        ),
      ),
    );
  }
}
