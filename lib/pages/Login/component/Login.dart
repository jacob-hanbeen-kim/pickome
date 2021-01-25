import 'package:flutter/material.dart';

import 'package:pickome/services/connection.dart';

import 'package:pickome/widgets/basicWidgets/Button/Button.dart';
import 'package:pickome/widgets/basicWidgets/Button/TextButton.dart';
import 'package:pickome/widgets/basicWidgets/TextField/InputField.dart';
import 'package:pickome/widgets/basicWidgets/DividerWithText.dart';
import 'package:pickome/widgets/basicWidgets/TextField/PasswordField.dart';

import 'package:pickome/pages/Login/component/Logo.dart';
import 'package:pickome/pages/Login/component/LoginFailDialog.dart';

import 'package:pickome/widgets/constants/ThemeColor.dart';

class Login extends StatefulWidget {

  Login({
    Key key,
    this.title = 'LOGIN',
    this.logo,
    this.messages,
    this.emailValidator,
    this.passwordValidator,
  }) : super(key: key);

  final String title;
  final String logo;
  final String messages;
  final FormFieldValidator<String> emailValidator;
  final FormFieldValidator<String> passwordValidator;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController pwController = TextEditingController();

    final emailField = getEmailField(emailController);
    final passwordField = getPasswordField(pwController);
    final loginButton = getLoginButton(emailController, pwController);
    final forgotPasswordButton = getForgotPasswordButton();
    final signUpButton = getSignUpButton();

    return Center(
      child: Container(
        // color: Colors.white,
        color: ThemeColor.Main1,
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Logo(),
              SizedBox(height: 40.0),
              emailField,
              SizedBox(height: 15.0),
              passwordField,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  forgotPasswordButton,
                ],
              ),
              SizedBox(height: 15.0),
              loginButton,
              SizedBox(height: 15.0),
              DividerWithText(
                text: 'OR',
                dividerColor: Colors.white,
                fontColor: Colors.white70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: TextStyle(color: Colors.white70)
                   // style: TextStyle(color: Colors.black45)
                 ),
                 signUpButton
               ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  getEmailField(emailController) {
    return InputField(
      controller: emailController,
      inputType: TextInputType.emailAddress,
      hintText: 'Email',
      prefixIcon: Icon(Icons.mail_outline_rounded),
    );
  }

  getPasswordField(pwController) {
    return PasswordField(
      controller: pwController,
    );
  }

  getLoginButton(emailController, pwController) {
    return Button(
        onPressed: () async {
          print(emailController.text);
          print(pwController.text);

          String email = emailController.text;
          String password = pwController.text;
          bool isAuthenticated = await authenticateUser(email, password);
          // bool isAuthenticated = true;
          if (isAuthenticated) {
            print('login successful!');
            Navigator.pushReplacementNamed(context, '/home', arguments: {
              'email': email,
            });
          } else {
            print('login failed');
            showDialog(
                context: context,
                builder: (context) => LoginFailDialog()
            );
          }
        },
        text: 'Log In'
    );
  }

  getForgotPasswordButton() {
    return CustomTextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/forgotPassword');
        },
        text: 'Forgot Password?',
        color: ThemeColor.BurnSienna
    );
  }

  getSignUpButton() {
    return CustomTextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/register');
        },
        text: 'Sign Up',
        color: ThemeColor.BurnSienna
    );
  }
}