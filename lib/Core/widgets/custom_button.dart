import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.str,
      required this.fontSize})
      : super(key: key);

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String str;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16))),
          child: Text(str,
              style: TextStyle(fontSize: fontSize, color: textColor))),
    );
  }
}
