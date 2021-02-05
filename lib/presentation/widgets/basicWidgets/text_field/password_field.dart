import 'package:flutter/material.dart';
import 'package:pickome/presentation/widgets/constants/DefaultStyleValues.dart';

class PasswordField extends StatefulWidget {
  const PasswordField(
      {@required this.onChanged,
      @required this.validator,
      this.hintText = 'Password',
      this.fontSize = DefaultStyleValues.defaultFontSize});

  final Function(String) onChanged;
  final String Function(String) validator;
  final String hintText;
  final double fontSize;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    final TextStyle customTextStyle =
        TextStyle(fontSize: widget.fontSize, color: Colors.black);

    return TextFormField(
      autocorrect: false,
      onChanged: widget.onChanged,
      validator: widget.validator,
      keyboardType: TextInputType.visiblePassword,
      obscureText: !showPassword,
      style: customTextStyle,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: widget.hintText,
        contentPadding: DefaultStyleValues.Padding,
        prefixIcon: const Icon(Icons.lock_open_rounded),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.remove_red_eye,
            color: showPassword ? Colors.blue : Colors.grey,
          ),
          onPressed: () {
            setState(() => showPassword = !showPassword);
          },
        ),
      ),
    );
  }
}
