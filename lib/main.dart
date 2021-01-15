import 'package:flutter/material.dart';
import 'package:my_house/pages/LoginPage.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/login': (context) => LoginPage(),
    // '/home': (context) => Home(),
  },
));