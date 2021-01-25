import 'package:flutter/material.dart';
import 'package:pickome/widgets/basicWidgets/Button/TextButton.dart';

class DataPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
        onPressed: () {
          print('show Data Policy');
        },
        text: 'Data Policy'
    );
  }
}
