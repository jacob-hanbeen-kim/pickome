import 'package:flutter/material.dart';
import 'package:pickome/presentation/widgets/constants/ThemeColor.dart';

class CustomTextButton extends StatelessWidget {

  const CustomTextButton({
    @required this.onPressed,
    @required this.text,
    this.color = ThemeColor.BurnSienna,
    this.fontSize,
    this.fontWeight
  });

  final void Function() onPressed;
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
