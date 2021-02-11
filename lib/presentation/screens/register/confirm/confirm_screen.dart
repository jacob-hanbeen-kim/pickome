import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pickome/presentation/screens/register/confirm/widgets/confirm.dart';
import 'package:pickome/presentation/widgets/basicWidgets/custom_app_bar.dart';

class ConfirmScreen extends StatelessWidget implements AutoRouteWrapper {
  const ConfirmScreen({Key key, @required this.signInFormBloc})
      : super(key: key);

  final SignInFormBloc signInFormBloc;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: Confirm(),
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
