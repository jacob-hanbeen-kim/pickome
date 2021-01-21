import 'package:flutter/material.dart';
import 'package:my_house/widgets/basicWidgets/Button/Button.dart';
import 'package:my_house/widgets/basicWidgets/InputField.dart';

class CreateAccount extends StatefulWidget {

  CreateAccount({
    @required this.onPressed,
    @required this.title,
    this.hintText,
    this.messages,
    this.inputType,
  });

  final Function onPressed;
  final String title;
  final String hintText;
  final String messages;
  final TextInputType inputType;

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  @override
  Widget build(BuildContext context) {

    TextEditingController inputController = TextEditingController();

    final inputField = InputField(
      controller: inputController,
      inputType: widget.inputType,
      hintText: widget.hintText,
      // prefixIcon: Icon(Icons.mail_outline_rounded),
    );

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
