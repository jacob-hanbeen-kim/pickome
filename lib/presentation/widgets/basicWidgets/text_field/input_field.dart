import 'package:flutter/material.dart';
import 'package:pickome/presentation/widgets/constants/DefaultStyleValues.dart';
import 'package:pickome/presentation/widgets/constants/ThemeColor.dart';

class InputField extends StatelessWidget {
  const InputField(
      {@required this.onChanged,
      @required this.validator,
      this.hintText,
      this.prefixIcon,
      this.inputType = TextInputType.text,
      this.fontSize = DefaultStyleValues.defaultFontSize,
      this.isPassword = false});

  final Function(String) onChanged;
  final String Function(String) validator;
  final TextInputType inputType;
  final Icon prefixIcon;
  final String hintText;
  final double fontSize;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    final TextStyle customTextStyle =
        TextStyle(fontSize: fontSize, color: Colors.black);

    return TextFormField(
      autocorrect: false,
      onChanged: onChanged,
      validator: validator,
      keyboardType: inputType,
      obscureText: isPassword,
      style: customTextStyle,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: hintText,
        prefixIcon: prefixIcon,
        contentPadding: DefaultStyleValues.Padding,
      ),
    );
  }
}
