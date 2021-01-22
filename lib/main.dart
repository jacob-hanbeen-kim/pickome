import 'package:flutter/material.dart';
import 'package:my_house/pages/LoginPage.dart';
import 'package:my_house/pages/Register/CreateUserPage.dart';
import 'package:my_house/pages/ForgotPasswordPage.dart';
import 'package:my_house/pages/HomePage.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/login': (context) => LoginPage(),
    '/register': (context) => CreateUserPage(),
    '/forgotPassword': (context) => ForgotPasswordPage(),
    '/home': (context) => HomePage(),
  },
));