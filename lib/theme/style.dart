import 'package:flutter/material.dart';
import 'package:pickome/widgets/constants/ThemeColor.dart';

ThemeData appTheme() {
  // return ThemeData(
  //   primaryColor: ThemeColor.Sub3, // hover color
  //   // inputDecorationTheme: const InputDecorationTheme(
  //   //   labelStyle: TextStyle(color: ThemeColor.Main2),
  //   //   hintStyle: TextStyle(color: ThemeColor.Main2),
  //   // )
  // );

  return ThemeData(
    primaryColor: ThemeColor.Sub2,
    accentColor: ThemeColor.Sub2, // Tab highlight color
    // hintColor: ThemeColor.Sub3,
    // dividerColor: ThemeColor.Sub3,
    // buttonColor: Colors.white,
    scaffoldBackgroundColor: ThemeColor.Main1,
    canvasColor: ThemeColor.Main1,
  );
}