import 'package:flutter/material.dart';
import 'package:pickome/widgets/constants/ThemeColor.dart';

class ForgotPasswordIcon extends StatelessWidget {

  ForgotPasswordIcon({ this.iconData });

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2.0, color: ThemeColor.BurnSienna)
        ),
        child: Icon(iconData, size: 40.0, color: ThemeColor.BurnSienna)
    );
  }
}
