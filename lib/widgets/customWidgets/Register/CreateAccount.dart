import 'package:flutter/material.dart';
import 'package:pickome/widgets/basicWidgets/Button/Button.dart';
import 'package:pickome/widgets/basicWidgets/TextField/InputField.dart';
import 'package:pickome/widgets/basicWidgets/TextField/PasswordField.dart';

class CreateAccount extends StatefulWidget {

  CreateAccount({
    @required this.onPressed,
    @required this.title,
    this.hintText,
    this.inputType,
    this.prefixIcon,
    this.isPassword = false,
    this.messages = '',
  });

  final Function onPressed;
  final String title;
  final String hintText;
  final String messages;
  final TextInputType inputType;
  final bool isPassword;
  final Icon prefixIcon;

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  @override
  Widget build(BuildContext context) {

    TextEditingController inputController = TextEditingController();

    dynamic inputField;

    if (widget.isPassword) {
      inputField = PasswordField(
          controller: inputController
      );
    } else {
      inputField = InputField(
        controller: inputController,
        inputType: widget.inputType,
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        // prefixIcon: Icon(Icons.mail_outline_rounded),
      );
    }

    final nextButton = Button(
      onPressed: () => widget.onPressed(inputController.text),
      text: 'Next',
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title,
            style: TextStyle(
                color: Colors.black
            ),
          ),
          leading: BackButton(
              color: Colors.black
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              inputField,
              SizedBox(height: 15.0),
              nextButton
            ],
          ),
        )
    );
  }
}
