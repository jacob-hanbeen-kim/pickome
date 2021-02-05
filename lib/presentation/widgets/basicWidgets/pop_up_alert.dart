import 'package:flutter/material.dart';
import 'package:pickome/presentation/widgets/basicWidgets/Button/text_button.dart';
import 'package:pickome/presentation/widgets/constants/DefaultStyleValues.dart';

class PopUpAlert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(DefaultStyleValues.CircularBorderRadius))
      ),
      // title: Text('Email Link Sent'),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
              Icons.check_circle_outlined,
              color: Colors.lightGreen,
              size: 100.0
          ),
          const Text('Email Link Sent',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 10.0),
          const Text('We sent an email to with a link to get back into your account',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10.0),
          const Divider(),
          const SizedBox(height: 10.0),
        ],
      ),
      actions: [
        CustomTextButton(onPressed: () {
            Navigator.of(context).pop();
          },
          text: 'OK',
          color: Colors.blueAccent,
        )
      ],
    );
  }
}
