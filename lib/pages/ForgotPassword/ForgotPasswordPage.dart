import 'package:flutter/material.dart';
import 'package:pickome/pages/ForgotPassword/component/ForgotPassword.dart';
import 'package:pickome/widgets/basicWidgets/CustomAppBar.dart';

class ForgotPasswordPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(
          title: 'Trouble logging in?'
      ),
      body: ForgotPassword(),
    );
  }
}