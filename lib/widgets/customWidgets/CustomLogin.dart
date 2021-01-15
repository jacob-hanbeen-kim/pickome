import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_house/widgets/basicWidgets/Button.dart';
import 'package:my_house/widgets/basicWidgets/InputField.dart';

class CustomLogin extends StatefulWidget {

  CustomLogin({
    Key key,
    // @required this.onSignup,
    // @required this.onLogin,
    // @required this.onRecoverPassword,
    this.title = 'LOGIN',
    this.logo,
    this.messages,
    this.emailValidator,
    this.passwordValidator,
    // this.onSubmitAnimationCompleted,
    // this.logoTag,
    // this.titleTag,
    // this.showDebugButtons = false,
  }) : super(key: key);

  final String title;
  final String logo;
  final String messages;
  final FormFieldValidator<String> emailValidator;
  final FormFieldValidator<String> passwordValidator;

  @override
  _CustomLoginState createState() => _CustomLoginState();
}

class _CustomLoginState extends State<CustomLogin> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final deviceSize = MediaQuery.of(context).size;
    // final cardWidth = min(deviceSize.width * 0.75, 360.0);
    // const cardPadding = 36.0;

    TextEditingController emailController = TextEditingController();
    TextEditingController pwController = TextEditingController();

    final emailField = InputField(
        controller: emailController,
        inputType: TextInputType.emailAddress,
        hintText: 'Email'
    );
    final passwordField = InputField(
        controller: pwController,
        isPassword: true,
        hintText: 'Password'
    );
    final loginButton = Button(
        onPressed: () {
          print(emailController.text);
          print(pwController.text);
        },
        text: 'LOGIN'
    );
    final signUpButton = Button(
        text: 'SIGN UP',
        fontColor: Color(0xff01A0C7),
        backgroundColor: Colors.white
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 50.0
                    ),
                  )
                  // child: Image.asset(
                  //   "assets/logo.png",
                  //   fit: BoxFit.contain,
                  // ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(height: 35.0),
                loginButton,
                SizedBox(height: 15.0),
                signUpButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}
