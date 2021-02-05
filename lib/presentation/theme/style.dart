import 'package:flutter/material.dart';
import 'package:pickome/presentation/widgets/constants/ThemeColor.dart';

ThemeData appTheme() {
  // return ThemeData(
  //   primaryColor: ThemeColor.Sub3, // hover color
  //   // inputDecorationTheme: const InputDecorationTheme(
  //   //   labelStyle: TextStyle(color: ThemeColor.Main2),
  //   //   hintStyle: TextStyle(color: ThemeColor.Main2),
  //   // )
  // );

  return ThemeData.light().copyWith(
    primaryColor: const Color.fromARGB(255, 33, 158, 188),
    accentColor: const Color.fromARGB(255, 33, 158, 188), // Tab highlight color
    // hintColor: ThemeColor.Sub3,
    // dividerColor: ThemeColor.Sub3,
    // buttonColor: Colors.white,
    scaffoldBackgroundColor: const Color.fromARGB(255, 68, 84, 106),
    canvasColor: const Color.fromARGB(255, 68, 84, 106),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0)
      )
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 55.0,
        fontFamily: 'PoiretOne',
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 253, 228, 151),
      ),
    ),
  );
}


// #44546aff -- blue
// #fde497 -- yellow


// class ThemeColor {
//   // static const Color BurnSienna = Color.fromARGB(255, 231, 111, 81);
//   static const Color DeepOrange = Color.fromARGB(255, 244, 162, 97);
//   static const Color PaleSepia = Color.fromARGB(255, 233, 196, 106);
//   static const Color AbyssGreen = Color.fromARGB(255, 42, 157, 143);
//   static const Color CoolGray = Color.fromARGB(255, 38, 70, 83);
//
//   static const Color Main1 = Color.fromARGB(255, 68, 84, 106);
//   static const Color Main2 = Color.fromARGB(255, 253, 228, 151);
//
//   // static const Color Main1 = Color.fromARGB(255, 2, 48, 71);
//   // static const Color Main2 = Color.fromARGB(255, 255, 183, 3);
//   static const Color Sub1 = Color.fromARGB(255, 142, 202, 230);
//   static const Color Sub2 = Color.fromARGB(255, 33, 158, 188);
//   static const Color Sub3 = Color.fromARGB(255, 251, 133, 0);
//
//   static const Color BurnSienna = Color.fromARGB(255, 253, 228, 151);
// }