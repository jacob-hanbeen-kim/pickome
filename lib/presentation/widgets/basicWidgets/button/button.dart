import 'package:flutter/material.dart';
import 'package:pickome/presentation/widgets/constants/ThemeColor.dart';
import 'package:pickome/presentation/widgets/constants/DefaultStyleValues.dart';

class Button extends StatelessWidget {

  const Button({
    @required this.onPressed,
    this.text,
    this.fontColor =ThemeColor.Main1,
    this.fontSize = DefaultStyleValues.defaultFontSize,
    this.backgroundColor = ThemeColor.BurnSienna
  });

  final void Function() onPressed;
  final String text;
  final Color fontColor;
  final double fontSize;

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {

    final TextStyle customTextStyle = TextStyle(
        fontSize: fontSize,
        color: fontColor
    );

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor, // background color
        primary: fontColor, // foreground color
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(DefaultStyleValues.CircularBorderRadius),
        ),
        // side: BorderSide(color: backgroundColor),
        minimumSize: Size(MediaQuery.of(context).size.width, 10),
        padding: DefaultStyleValues.Padding,
        elevation: 0
      ),
      child: Text(text,
        textAlign: TextAlign.center,
        style: customTextStyle
      ),
    );
  }
}