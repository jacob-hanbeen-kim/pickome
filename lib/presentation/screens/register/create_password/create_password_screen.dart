import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pickome/presentation/routes/router.gr.dart';
import 'package:pickome/presentation/widgets/basicWidgets/custom_app_bar.dart';
import 'package:pickome/presentation/screens/register/create_password/widgets/create_password.dart';

class CreatePasswordScreen extends StatelessWidget implements AutoRouteWrapper {
  final SignInFormBloc signInFormBloc;
  const CreatePasswordScreen({Key key, @required this.signInFormBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Create Password'),
      body: CreatePassword(title: 'Create Password'),
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
