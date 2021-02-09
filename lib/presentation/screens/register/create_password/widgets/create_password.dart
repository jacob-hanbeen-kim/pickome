// import 'package:flutter/material.dart';
// import 'package:pickome/presentation/widgets/basicWidgets/text_field/password_field.dart';
// import 'package:pickome/presentation/widgets/basicWidgets/Button/Button.dart';
//
// class CreatePassword extends StatelessWidget {
//
//   CreatePassword({
//     @required this.onPressed,
//     @required this.title,
//     this.hintText,
//     this.messages = '',
//   });
//
//   final Function onPressed;
//   final String title;
//   final String hintText;
//   final String messages;
//
//   @override
//   Widget build(BuildContext context) {
//
//     TextEditingController inputController = TextEditingController();
//
//     final inputField = PasswordField(
//       controller: inputController,
//     );
//
//     final nextButton = Button(
//       onPressed: () => onPressed(inputController.text),
//       text: 'Next',
//     );
//
//     return Padding(
//       padding: const EdgeInsets.all(36.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           inputField,
//           SizedBox(height: 15.0),
//           nextButton
//         ],
//       ),
//     );
//   }
// }
