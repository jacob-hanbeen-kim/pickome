import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pickome/injection.dart';
import 'package:pickome/presentation/screens/sign_in/widgets/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: SignInForm(),
    ));
  }
}
