import 'package:flutter/material.dart';
import 'package:pickome/widgets/constants/DefaultStyleValues.dart';

class PasswordField extends StatefulWidget {

  PasswordField({
    @required this.controller,
    this.hintText = 'Password',
    this.fontSize = DefaultStyleValues.defaultFontSize
  });

  final TextEditingController controller;
  final String hintText;
  final double fontSize;

  bool showPassword = false;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    TextStyle customTextStyle = TextStyle(
      fontSize: widget.fontSize,
    );

    return TextField(
      controller: widget.controller,
      keyboardType: TextInputType.visiblePassword,
      obscureText: !widget.showPassword,
      style: customTextStyle,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: widget.hintText,
          contentPadding: DefaultStyleValues.Padding,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(DefaultStyleValues.CircularBorderRadius)
          ),
          prefixIcon: Icon(Icons.lock_open_rounded),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.remove_red_eye,
              color: widget.showPassword ? Colors.blue : Colors.grey,
            ),
            onPressed: () {
              setState(() => widget.showPassword = !widget.showPassword);
            },
          ),
      ),
    );
  }
}
