import 'package:flutter/material.dart';
import 'package:pickome/pages/Register/Confirm/component/Confirm.dart';
import 'package:pickome/widgets/basicWidgets/CustomAppBar.dart';

class ConfirmPage extends StatelessWidget {

  ConfirmPage({this.username, this.password, this.email, this.phoneNumber});
  final String username;
  final String password;
  final String email;
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      body: Confirm(email: username, password: password)
    );
  }
}