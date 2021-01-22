import 'package:flutter/material.dart';
import 'package:my_house/pages/Register/CreatePasswordPage.dart';
import 'package:my_house/widgets/customWidgets/Register/CreateAccount.dart';

class CreateUserPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return CreateAccount(onPressed: (email) {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreatePasswordPage(email: email))
        );
      },
      title: 'Create Username',
      hintText: 'Email',
      inputType: TextInputType.emailAddress,
      prefixIcon: Icon(Icons.mail_outline_rounded)
    );
  }
}