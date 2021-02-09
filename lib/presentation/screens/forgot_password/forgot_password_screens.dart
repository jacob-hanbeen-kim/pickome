import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pickome/presentation/screens/forgot_password/widgets/forgot_password.dart';
import 'package:pickome/presentation/widgets/basicWidgets/custom_app_bar.dart';

class ForgotPasswordScreen extends StatelessWidget with AutoRouteWrapper {
  const ForgotPasswordScreen({Key key, @required this.signInFormBloc})
      : super(key: key);

  final SignInFormBloc signInFormBloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Trouble logging in?'),
      body: ForgotPassword(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    // provide sign-up bloc here
    return BlocProvider.value(
      value: signInFormBloc,
      // .add(const AuthEvent.authCheckRequested());,
      child: this,
    );
  }
}
