import 'package:flutter/material.dart';

import 'package:pickome/pages/ForgotPassword/component/ForgotPasswordIcon.dart';
import 'package:pickome/pages/ForgotPassword/component/ForgotPasswordMessage.dart';

import 'package:pickome/widgets/basicWidgets/Button/Button.dart';
import 'package:pickome/widgets/basicWidgets/TextField/InputField.dart';
import 'package:pickome/widgets/basicWidgets/PopUpAlert.dart';
import 'package:pickome/widgets/constants/ThemeColor.dart';



class ForgotPassword extends StatefulWidget {

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  @override
  Widget build(BuildContext context) {

    TextEditingController inputController = TextEditingController();

    final inputField = getInputField(inputController);
    final nextButton = getNextButton();

    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        children: [
          ForgotPasswordIcon(
            iconData: Icons.lock_outline_rounded,
          ),
          ForgotPasswordMessage(
              message: "Enter your email and we'll send you the link to get back into your account."
          ),
          SizedBox(height: 15.0),
          inputField,
          SizedBox(height: 15.0),
          nextButton
        ],
      ),
    );
  }

  getInputField(inputController) {
    return InputField(
      controller: inputController,
      inputType: TextInputType.emailAddress,
      hintText: 'Email',
      // prefixIcon: Icon(Icons.mail_outline_rounded),
    );
  }

  getNextButton() {
    return Button(
      onPressed: () => showDialog(
          context: context,
          builder: (context) => PopUpAlert()
      ),
      text: 'Send Recovery Link',
    );
  }
}
