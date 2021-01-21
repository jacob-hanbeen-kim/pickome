import 'package:flutter/material.dart';
import 'package:my_house/widgets/customWidgets/Register/Confirm.dart';

class RegisterPage extends StatelessWidget {

  RegisterPage({this.email, this.password});
  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {

    return Confirm(email: email, password: password);
  }
}