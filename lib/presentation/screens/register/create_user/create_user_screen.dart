import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pickome/presentation/screens/register/create_password/create_password_screen.dart';
import 'package:pickome/presentation/widgets/basicWidgets/custom_app_bar.dart';
import 'package:pickome/presentation/screens/register/create_user/widgets/create_user.dart';

class CreateUserScreen extends StatelessWidget with AutoRouteWrapper {
  final SignInFormBloc signInFormBloc;

  const CreateUserScreen({Key key, @required this.signInFormBloc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Create Username'),
      body: CreateUser(
          title: 'Create Username',
          onPressed: (username) {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) =>
            //             CreatePasswordPage(username: username)));
          },
          hintText: 'Username'),
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
