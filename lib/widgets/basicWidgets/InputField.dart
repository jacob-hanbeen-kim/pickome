import 'package:flutter/material.dart';
import 'package:my_house/widgets/constants/DefaultStyleValues.dart';

class InputField extends StatelessWidget {

  InputField({
    @required this.controller,
    this.hintText,
    this.prefixIcon,
    this.inputType = TextInputType.text,
    this.fontSize = DefaultStyleValues.defaultFontSize,
    this.isPassword = false
  });

  final TextEditingController controller;
  final TextInputType inputType;
  final Icon prefixIcon;
  final String hintText;
  final double fontSize;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    TextStyle customTextStyle = TextStyle(
      fontSize: fontSize,
    );

    return TextField(
      controller: controller,
      obscureText: isPassword,
      style: customTextStyle,
      decoration: InputDecoration(
          labelText: hintText,
          prefixIcon: prefixIcon,
          contentPadding: DefaultStyleValues.Padding,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DefaultStyleValues.CircularBorderRadius)
          )
      ),
    );
  }
}
