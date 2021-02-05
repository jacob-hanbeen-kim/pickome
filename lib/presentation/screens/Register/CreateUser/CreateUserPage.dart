// import 'package:flutter/material.dart';
// import 'package:pickome/presentation/screens/Register/CreatePassword/CreatePasswordPage.dart';
// import 'package:pickome/presentation/widgets/basicWidgets/CustomAppBar.dart';
// import 'package:pickome/presentation/screens/Register/CreateUser/component/CreateUser.dart';
//
// class CreateUserPage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: CustomAppBar(
//           title: 'Create Username'
//       ),
//       body: CreateUser(
//         title: 'Create Username',
//         onPressed: (username) {
//           Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => CreatePasswordPage(username: username))
//           );
//         },
//         hintText: 'Username'
//       ),
//     );
//   }
// }