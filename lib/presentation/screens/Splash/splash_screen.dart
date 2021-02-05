import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/auth_bloc.dart';
import 'package:pickome/presentation/routes/router.gr.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          authenticated: () {
            print('I am authenticated');
            // ExtendedNavigator.of(context).replace(Routes.loginScreen),
          },
          unuthenticated: () =>
              ExtendedNavigator.of(context).replace(Routes.signInScreen),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
