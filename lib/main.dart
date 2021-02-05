import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:pickome/injection.dart';
import 'package:pickome/presentation/screens/core/app_widget.dart';

void main() {
  configureInjection(Environment.dev);
  runApp(AppWidget());
}

// Global Provider --> available across all pages
// class MyApp extends StatelessWidget {
//   // AppRouter _appRouter = AppRouter();
//
//   @override
//   Widget build(BuildContext context) {
//     return BlockProvider<AuthenticationCubit>(
//       create: (context) => AuthenticationCubit(),
//       child: MaterialApp(
//           initialRoute: initialRoute,
//           routes: routes,
//           // onGenerateRoute: _appRouter.onGenerateRoute,
//           theme: appTheme()
//       ),
//     );
//   }
// }
