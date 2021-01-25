import 'package:flutter/material.dart';
import 'package:pickome/widgets/basicWidgets/Button/TextButton.dart';
import 'package:pickome/widgets/constants/DefaultStyleValues.dart';

class PopUpAlert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(DefaultStyleValues.CircularBorderRadius))
      ),
      // title: Text('Email Link Sent'),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
              Icons.check_circle_outlined,
              color: Colors.lightGreen,
              size: 100.0
          ),
          Text('Email Link Sent',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10.0),
          Text('We sent an email to with a link to get back into your account',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0),
          Divider(),
          SizedBox(height: 10.0),
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
