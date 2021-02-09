// import 'package:flutter/material.dart';
// import 'package:pickome/presentation/pages/Register/Confirm/component/TermsAndDataPolicy.dart';
// import 'package:pickome/presentation/widgets/basicWidgets/Button/Button.dart';
// import 'package:pickome/presentation/widgets/constants/DefaultStyleValues.dart';
// import 'package:pickome/presentation/widgets/constants/ThemeColor.dart';
//
// class Confirm extends StatelessWidget {
//
//   Confirm({
//     @required this.email,
//     this.password
//   });
//
//   final String email;
//   final String password;
//
//   @override
//   Widget build(BuildContext context) {
//
//     final signUpButton = getSignUpButton(context);
//     final cancelButton = getCancelButton(context);
//
//     final textStyle = TextStyle(
//       fontSize: DefaultStyleValues.defaultTitleSize,
//       color: Colors.white70,
//     );
//
//     return Padding(
//       padding: const EdgeInsets.all(36.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Spacer(),
//           Text('Welcome to Pickome', style: textStyle),
//           Text(email, style: textStyle),
//           SizedBox(height: 25.0),
//           signUpButton,
//           SizedBox(height: 10.0),
//           cancelButton,
//           Spacer(),
//           Divider(),
//           TermsAndDataPolicy()
//         ],
//       ),
//     );
//   }
//
//   getSignUpButton(context) {
//     return Button(
//       onPressed: () {
//         Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false, arguments: {
//           'email': email
//         });
//       },
//       text: 'Complete Sign Up',
//     );
//   }
//
//   getCancelButton(context) {
//     return Button(
//       onPressed: () {
//         Navigator.of(context).pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
//       },
//       text: 'Cancel',
//       backgroundColor: Colors.transparent,
//       fontColor: ThemeColor.BurnSienna,
//     );
//   }
// }
