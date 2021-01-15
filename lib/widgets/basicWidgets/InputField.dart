import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  InputField({
    @required this.controller,
    this.hintText,
    this.inputType = TextInputType.text,
    this.fontSize = 20.0,
    this.isPassword = false
  });

  final TextEditingController controller;
  final TextInputType inputType;
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
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0)
          )
      ),
    );
  }
}
