import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  Button({
    @required this.onPressed,
    this.text,
    this.fontColor = Colors.white,
    this.fontSize = 20.0,
    this.backgroundColor = const Color(0xff01A0C7)
  });

  final Function onPressed;
  final String text;
  final Color fontColor;
  final double fontSize;

  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {

    TextStyle customTextStyle = TextStyle(
        fontSize: fontSize,
        color: fontColor
    );

    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: backgroundColor,
      child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: onPressed,
        child: Text(text,
            textAlign: TextAlign.center,
            style: customTextStyle
        ),
      ),
    );
  }
}