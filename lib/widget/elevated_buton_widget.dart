import 'package:flutter/material.dart';

import '../utils/app_color.dart';
import '../utils/app_styles.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String text;
  final Widget? icon;
  final TextStyle? styleText;
  final VoidCallback? onPressed;
  final Color? iconColor;
final Color?bgColor;

  const ElevatedButtonWidget({
    required this.text,
    this.icon,
    this.bgColor,
    this.iconColor,
    this.styleText,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(color: Colors.white, width: 2),
          ),
          padding: EdgeInsets.all(13),
        ).copyWith(
          backgroundColor: MaterialStateProperty.
          all(bgColor?? Colors.white),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? SizedBox(),
            SizedBox(width: 6),
            Text(
              text,
              style: styleText ?? AppStyles.bold20mainColor,
            ),
          ],
        ),
      ),
    );
  }
}
