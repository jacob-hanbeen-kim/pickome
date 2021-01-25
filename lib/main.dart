import 'package:flutter/material.dart';
import 'package:pickome/routes.dart';
import 'package:pickome/theme/style.dart';

void main() => runApp(MaterialApp(
  initialRoute: initialRoute,
  routes: routes,
  theme: appTheme()
));