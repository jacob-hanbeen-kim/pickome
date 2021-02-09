import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:pickome/injection.dart';

class SignInRoutes extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    // provide sign-up bloc here
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return this;
  }
}
