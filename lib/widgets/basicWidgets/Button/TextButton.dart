import 'package:flutter/material.dart';
import 'package:my_house/widgets/constants/ThemeColor.dart';
import 'package:my_house/widgets/constants/DefaultStyleValues.dart';

class CustomTextButton extends StatelessWidget {

  CustomTextButton({
    @required this.onPressed,
    @required this.text,
    this.color = ThemeColor.BurnSienna,
    this.fontSize,
    this.fontWeight
  });

  final Function onPressed;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color
        )
      ),
    );
  }
}
