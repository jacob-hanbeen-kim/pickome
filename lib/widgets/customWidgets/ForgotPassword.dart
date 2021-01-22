import 'package:flutter/material.dart';
import 'package:my_house/widgets/basicWidgets/Button/Button.dart';
import 'package:my_house/widgets/basicWidgets/TextField/InputField.dart';
import 'package:my_house/widgets/basicWidgets/PopUpAlert.dart';
import 'package:my_house/widgets/constants/ThemeColor.dart';

class ForgotPassword extends StatefulWidget {

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  @override
  Widget build(BuildContext context) {

    TextEditingController inputController = TextEditingController();

    final inputField = InputField(
      controller: inputController,
      inputType: TextInputType.emailAddress,
      hintText: 'Email',
      // prefixIcon: Icon(Icons.mail_outline_rounded),
    );

    final nextButton = Button(
      onPressed: () => showDialog(
          context: context,
          builder: (context) => PopUpAlert()
      ),
      text: 'Send Recovery Link',
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('Trouble logging in?',
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
              Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2.0, color: ThemeColor.BurnSienna)
                ),
                  child: Icon(Icons.lock_outline_rounded, size: 40.0, color: ThemeColor.BurnSienna,)
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                child: Text("Enter your email and we'll send you the link to get back into your account.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black45
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              inputField,
              SizedBox(height: 15.0),
              nextButton
            ],
          ),
        )
    );
  }
}
