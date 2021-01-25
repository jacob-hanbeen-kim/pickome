import 'package:flutter/material.dart';
import 'package:pickome/widgets/basicWidgets/Button/TextButton.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
        onPressed: () {
          print('show Terms');
        },
        text: 'Terms'
    );
  }
}
