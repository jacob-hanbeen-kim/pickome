// import 'package:flutter/material.dart';
//
// import 'package:pickome/presentation/widgets/basicWidgets/CustomAppBar.dart';
// import 'package:pickome/presentation/screens/Register/AddPhoneOrEmail/component/CustomTabBarView.dart';
// import 'package:pickome/presentation/screens/Register/AddPhoneOrEmail/component/CustomTabBar.dart';
//
// class AddPhoneOrEmailPage extends StatelessWidget {
//
//   AddPhoneOrEmailPage({this.username, this.password});
//   final String username;
//   final String password;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: CustomAppBar(
//           title: 'Add Phone or Email',
//           bottomWidget: CustomTabBar()
//         ),
//         body:  CustomTabBarView(username: username, password: password)
//       ),
//     );
//   }
// }