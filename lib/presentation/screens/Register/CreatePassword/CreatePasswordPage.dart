// import 'package:flutter/material.dart';
// import 'package:pickome/presentation/screens/Register/AddPhoneOrEmail/AddPhoneOrEmailPage.dart';
// import 'package:pickome/presentation/widgets/basicWidgets/CustomAppBar.dart';
// import 'package:pickome/presentation/screens/Register/CreatePassword/component/CreatePassword.dart';
//
// class CreatePasswordPage extends StatelessWidget {
//
//   CreatePasswordPage({this.username});
//
//   final String username;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//         appBar: CustomAppBar(
//         title: 'Create Password'
//       ),
//       body:CreatePassword(
//           onPressed: (password) {
//             Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => AddPhoneOrEmailPage(username: username, password: password))
//             );
//           },
//           title: 'Create Password'
//       )
//     );
//   }
// }