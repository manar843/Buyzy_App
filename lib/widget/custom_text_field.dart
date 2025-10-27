
import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  String hintText;
  TextStyle? hintStyle;
  Widget? icon;
  Widget? suffixIcon;
  Color? colorIcon;
  Color? colorBackground;
  TextInputType? keyboardType;
  bool obscureText;
  Color? suffixIconColor;
  Color? borderSideColor;
  int? maxLines;
  String? Function(String?)? validator;
  TextEditingController? controller;

  CustomTextFormField({

    this.obscureText = false,
    this.controller,
    this.validator,
    this.icon,
    this.maxLines,
    this.suffixIconColor,
    this.borderSideColor,
    required this.hintText,
    this.suffixIcon,
    this.hintStyle,
    this.colorIcon,
    this.colorBackground,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        validator: validator,
        maxLines: maxLines ?? 1,
        obscureText: obscureText,
        obscuringCharacter: '.',
        keyboardType: keyboardType ?? TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          fillColor: colorBackground ?? Colors.white,
          focusColor: AppColor.WhiteColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderSideColor ??Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderSideColor ?? Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderSideColor ??Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          prefixIcon: icon,
          suffixIconColor: suffixIconColor ?? Colors.grey,
          suffixIcon: suffixIcon,
          prefixIconColor: colorIcon ?? Colors.grey,
          hintText: hintText,
          hintStyle: hintStyle ?? AppStyles.bold20mainColor,
        ),
      ),
    );
  }
}
