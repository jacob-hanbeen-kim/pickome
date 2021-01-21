import 'package:flutter/material.dart';
import 'package:my_house/widgets/basicWidgets/Button/TextButton.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Home Page'),
            CustomTextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              text: 'Back',
            )
          ],
        ),
      )
    );
  }
}