import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/auth_bloc.dart';
import 'package:pickome/injection.dart';
import 'package:pickome/presentation/routes/router.gr.dart';
import 'package:pickome/presentation/theme/style.dart';

class AppWidget extends StatelessWidget {
  // AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp(
          builder: ExtendedNavigator(
            router: MyRouter(),
          ),
          debugShowCheckedModeBanner: false,
          // onGenerateRoute: _appRouter.onGenerateRoute,
          theme: appTheme()),
    );
  }
  // @override
  // void dispose() {
  //   _appRouter.dispose();
  //   super.dispose();
  // }
}
