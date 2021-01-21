import 'package:flutter/material.dart';
import 'package:my_house/widgets/basicWidgets/Button/Button.dart';
import 'package:my_house/widgets/basicWidgets/Button/TextButton.dart';
import 'package:my_house/widgets/basicWidgets/TextField/InputField.dart';

import 'package:my_house/connection/connection.dart';

class CustomRegister extends StatefulWidget {

  CustomRegister({
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
  _CustomRegisterState createState() => _CustomRegisterState();
}

class _CustomRegisterState extends State<CustomRegister> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final deviceSize = MediaQuery.of(context).size;
    // final cardWidth = min(deviceSize.width * 0.75, 360.0);
    // const cardPadding = 36.0;

    TextEditingController emailController = TextEditingController();
    TextEditingController pwController = TextEditingController();
    TextEditingController confirmPwController = TextEditingController();

    final emailField = InputField(
      controller: emailController,
      inputType: TextInputType.emailAddress,
      hintText: 'Email',
      prefixIcon: Icon(Icons.mail_outline_rounded),
    );
    final passwordField = InputField(
      controller: pwController,
      isPassword: true,
      hintText: 'Password',
      prefixIcon: Icon(Icons.lock_open_rounded),
    );
    final confirmPasswordField = InputField(
      controller: confirmPwController,
      isPassword: true,
      hintText: 'Confirm Password',
      prefixIcon: Icon(Icons.lock_open_rounded),
    );
    final submitButton = Button(
        onPressed: () async {
          print(emailController.text);
          print(pwController.text);

          String email = emailController.text;
          String password = pwController.text;
          String confirmPassword = confirmPwController.text;
          // List<dynamic> res = await postUser(email, password);
          if (email != null && password == confirmPassword) {
            print('user created!');
            Navigator.pop(context);
          } else {
            print('password does not match');
          }
        },
        text: 'Submit'
    );
    final backButton = CustomTextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        text: 'Back'
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Register',
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
            emailField,
            SizedBox(height: 15.0),
            passwordField,
            SizedBox(height: 15.0),
            confirmPasswordField,
            SizedBox(height: 35.0),
            submitButton
          ],
        ),
      )


      // Container(
      //   color: Colors.white,
      //   child: Padding(
      //     padding: const EdgeInsets.fromLTRB(36.0, 0.0, 36.0, 36.0),
      //     child: Column(
      //       // crossAxisAlignment: CrossAxisAlignment.center,
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: <Widget>[
      //         Spacer(),
      //         // SizedBox(
      //         //     height: 155.0,
      //         //     child: Text(
      //         //       'REGISTER',
      //         //       style: TextStyle(
      //         //           fontSize: 50.0
      //         //       ),
      //         //     )
      //         //   // child: Image.asset(
      //         //   //   "assets/logo.png",
      //         //   //   fit: BoxFit.contain,
      //         //   // ),
      //         // ),
      //         emailField,
      //         SizedBox(height: 15.0),
      //         passwordField,
      //         SizedBox(height: 15.0),
      //         confirmPasswordField,
      //         SizedBox(height: 35.0),
      //         submitButton,
      //         // SizedBox(height: 15.0),
      //         Spacer(),
      //         Divider(),
      //         backButton
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
