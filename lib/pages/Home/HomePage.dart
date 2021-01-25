import 'package:flutter/material.dart';
import 'package:pickome/pages/Home/component/Home.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;

    return Home(email: arguments['email']);
  }
}