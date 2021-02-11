import 'package:flutter/material.dart';
import 'package:pickome/presentation/widgets/basicWidgets/button/text_button.dart';

class DataPolicy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomTextButton(
        onPressed: () {
          print('show Data Policy');
        },
        text: 'Data Policy');
  }
}
