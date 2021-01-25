import 'package:flutter/material.dart';
import 'package:pickome/widgets/constants/DefaultStyleValues.dart';
import 'package:pickome/widgets/constants/ThemeColor.dart';

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
      keyboardType: inputType,
      obscureText: isPassword,
      style: customTextStyle,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: hintText,
          prefixIcon: prefixIcon,
          contentPadding: DefaultStyleValues.Padding,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DefaultStyleValues.CircularBorderRadius),
            borderSide: BorderSide(
              color: ThemeColor.Main2
            )
          ),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: ThemeColor.Main2, width: 3.0),
        //   borderRadius: BorderRadius.circular(DefaultStyleValues.CircularBorderRadius),
        // ),
        // enabledBorder: OutlineInputBorder(
        //   borderSide: BorderSide(color: ThemeColor.Main2, width: 3.0),
        //   borderRadius: BorderRadius.circular(DefaultStyleValues.CircularBorderRadius),
        // ),
        // hintStyle: TextStyle(
        //   color: ThemeColor.Main2,
        // )
      ),
    );
  }
}
