import 'package:flutter/material.dart';
import 'package:my_house/pages/Register/RegisterPage.dart';
import 'package:my_house/widgets/customWidgets/Register/CreateAccount.dart';

class CreatePasswordPage extends StatelessWidget {

  CreatePasswordPage({this.email});

  final String email;

  @override
  Widget build(BuildContext context) {

    return CreateAccount(onPressed: (password) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage(email: email, password: password)));
    }, title: 'Create Password');
  }
}