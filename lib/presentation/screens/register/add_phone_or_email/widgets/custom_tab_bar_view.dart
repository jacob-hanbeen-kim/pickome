// import 'package:flutter/material.dart';
// import 'package:pickome/presentation/pages/Register/Confirm/ConfirmPage.dart';
// import 'package:pickome/presentation/widgets/basicWidgets/text_field/phone_number_field.dart';
// import 'package:pickome/presentation/widgets/basicWidgets/text_field/input_field.dart';
// import 'package:pickome/presentation/widgets/basicWidgets/Button/Button.dart';
//
// class CustomTabBarView extends StatelessWidget {
//
//   CustomTabBarView({ this.username, this.password });
//
//   final String username;
//   final String password;
//
//   @override
//   Widget build(BuildContext context) {
//
//     TextEditingController inputController = TextEditingController();
//
//     dynamic inputField = InputField(
//       controller: inputController,
//       inputType: TextInputType.emailAddress,
//       hintText: 'Email',
//       prefixIcon: Icon(Icons.mail_outline_rounded),
//     );
//
//     final nextButton = Button(
//       onPressed: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => ConfirmPage(username: username, password: password))
//         );
//       },
//       text: 'Next',
//     );
//
//     return TabBarView(children: [
//       Padding(
//         padding: const EdgeInsets.all(36.0),
//         child: Column(
//           children: [
//             PhoneWidget(),
//             SizedBox(height: 15.0),
//             nextButton
//           ],
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.all(36.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             inputField,
//             SizedBox(height: 15.0),
//             nextButton
//           ],
//         ),
//       )
//     ]);
//   }
// }
