import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pickome/application/auth/sign_in_form/sign_in_form_bloc.dart';

import 'package:pickome/presentation/widgets/basicWidgets/custom_app_bar.dart';
import 'package:pickome/presentation/screens/register/add_phone_or_email/widgets/custom_tab_bar_view.dart';
import 'package:pickome/presentation/screens/register/add_phone_or_email/widgets/custom_tab_bar.dart';

class AddPhoneOrEmailScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const AddPhoneOrEmailScreen({Key key, @required this.signInFormBloc})
      : super(key: key);

  final SignInFormBloc signInFormBloc;

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Add Phone or Email',
          bottomWidget: CustomTabBar(),
        ),
        body: CustomTabBarView(),
      ),
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
