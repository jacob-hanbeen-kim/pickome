import 'package:flutter/material.dart';

import 'package:my_house/connection/connection.dart';

import 'package:my_house/widgets/basicWidgets/Button/Button.dart';
import 'package:my_house/widgets/basicWidgets/Button/TextButton.dart';
import 'package:my_house/widgets/basicWidgets/TextField/InputField.dart';
import 'package:my_house/widgets/basicWidgets/DividerWithText.dart';
import 'package:my_house/widgets/basicWidgets/TextField/PasswordField.dart';

import 'package:my_house/widgets/constants/ThemeColor.dart';

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
      hintText: 'Email',
      prefixIcon: Icon(Icons.mail_outline_rounded),
    );
    final passwordField = PasswordField(
      controller: pwController,
    );
    final logInButton = Button(
        onPressed: () async {
          print(emailController.text);
          print(pwController.text);

          String email = emailController.text;
          String password = pwController.text;
          bool isAuthenticated = await authenticateUser(email, password);
          if (isAuthenticated) {
            print('login successful!');
            Navigator.pushReplacementNamed(context, '/home', arguments: {
              'email': email,
            });
          } else {
            print('login failed');
          }
        },
        text: 'Log In'
    );

    final forgotPasswordButton = CustomTextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/forgotPassword');
        },
        text: 'Forgot Password?',
        color: ThemeColor.BurnSienna
    );

    final signUpButton = CustomTextButton(
      onPressed: () {
          Navigator.pushNamed(context, '/register');
        },
      text: 'Sign Up',
      color: ThemeColor.BurnSienna
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
                  height: 100.0,
                  child: Text(
                    'pickome',
                    style: TextStyle(
                      fontSize: 55.0,
                      fontFamily: 'PoiretOne',
                      fontWeight: FontWeight.bold,
                      color: ThemeColor.BurnSienna
                    ),
                  )
                  // child: Image.asset(
                  //   "assets/logo.png",
                  //   fit: BoxFit.contain,
                  // ),
                ),
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
                logInButton,
                SizedBox(height: 15.0),
                DividerWithText(text: 'OR'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Don't have an account?",
                     style: TextStyle(color: Colors.black45)
                   ),
                   signUpButton
                 ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
