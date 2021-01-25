import 'package:flutter/material.dart';

class ForgotPasswordMessage extends StatelessWidget {

  ForgotPasswordMessage({ this.message });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
      child: Text(message,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white70
        ),
      ),
    );
  }
}
