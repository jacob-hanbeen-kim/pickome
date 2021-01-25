import 'package:flutter/widgets.dart';
import 'package:pickome/pages/ForgotPassword/ForgotPasswordPage.dart';
import 'package:pickome/pages/Home/HomePage.dart';
import 'package:pickome/pages/Register/CreateUser/CreateUserPage.dart';
import 'package:pickome/pages/Login/LoginPage.dart';


final String initialRoute = '/login';

final Map<String, WidgetBuilder> routes = {
  '/login': (context) => LoginPage(),
  '/register': (context) => CreateUserPage(),
  '/forgotPassword': (context) => ForgotPasswordPage(),
  '/home': (context) => HomePage(),
};