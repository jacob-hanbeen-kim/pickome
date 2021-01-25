import 'package:flutter/material.dart';
import 'package:pickome/widgets/basicWidgets/TextField/InputField.dart';
import 'package:pickome/widgets/basicWidgets/Button/Button.dart';

class CreateUser extends StatelessWidget {

  CreateUser({
    @required this.onPressed,
    @required this.title,
    this.hintText,
    this.messages = '',
  });

  final Function onPressed;
  final String title;
  final String hintText;
  final String messages;

  @override
  Widget build(BuildContext context) {

    TextEditingController inputController = TextEditingController();

    final inputField = InputField(
      controller: inputController,
      // inputType: TextInputType.text,
      hintText: hintText,
      // prefixIcon: Icon(Icons.mail_outline_rounded),
    );

    final nextButton = Button(
      onPressed: () => onPressed(inputController.text),
      text: 'Next',
    );

    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputField,
          SizedBox(height: 15.0),
          nextButton
        ],
      ),
    );
  }
}
