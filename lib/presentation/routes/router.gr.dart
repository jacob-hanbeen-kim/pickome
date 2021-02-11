// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../screens/forgot_password/forgot_password_screens.dart';
import '../screens/home/home_screen.dart';
import '../screens/register/add_phone_or_email/add_phone_or_email_screen.dart';
import '../screens/register/confirm/confirm_screen.dart';
import '../screens/register/create_password/create_password_screen.dart';
import '../screens/register/create_user/create_user_screen.dart';
import '../screens/sign_in/sign_in_screen.dart';
import '../screens/splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String signInScreen = '/sign-in-screen';
  static const String forgotPasswordScreen = '/forgot-password-screen';
  static const String homeScreen = '/home-screen';
  static const String createUserScreen = '/create-user-screen';
  static const String createPasswordScreen = '/create-password-screen';
  static const String addPhoneOrEmailScreen = '/add-phone-or-email-screen';
  static const String confirmScreen = '/confirm-screen';
  static const all = <String>{
    splashScreen,
    signInScreen,
    forgotPasswordScreen,
    homeScreen,
    createUserScreen,
    createPasswordScreen,
    addPhoneOrEmailScreen,
    confirmScreen,
  };
}

class MyRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.signInScreen, page: SignInScreen),
    RouteDef(Routes.forgotPasswordScreen, page: ForgotPasswordScreen),
    RouteDef(Routes.homeScreen, page: HomeScreen),
    RouteDef(Routes.createUserScreen, page: CreateUserScreen),
    RouteDef(Routes.createPasswordScreen, page: CreatePasswordScreen),
    RouteDef(Routes.addPhoneOrEmailScreen, page: AddPhoneOrEmailScreen),
    RouteDef(Routes.confirmScreen, page: ConfirmScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    SignInScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInScreen(),
        settings: data,
      );
    },
    ForgotPasswordScreen: (data) {
      final args = data.getArgs<ForgotPasswordScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPasswordScreen(
          key: args.key,
          signInFormBloc: args.signInFormBloc,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    HomeScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreen(),
        settings: data,
      );
    },
    CreateUserScreen: (data) {
      final args = data.getArgs<CreateUserScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateUserScreen(
          key: args.key,
          signInFormBloc: args.signInFormBloc,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    CreatePasswordScreen: (data) {
      final args = data.getArgs<CreatePasswordScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreatePasswordScreen(
          key: args.key,
          signInFormBloc: args.signInFormBloc,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    AddPhoneOrEmailScreen: (data) {
      final args = data.getArgs<AddPhoneOrEmailScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddPhoneOrEmailScreen(
          key: args.key,
          signInFormBloc: args.signInFormBloc,
        ).wrappedRoute(context),
        settings: data,
      );
    },
    ConfirmScreen: (data) {
      final args = data.getArgs<ConfirmScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ConfirmScreen(
          key: args.key,
          signInFormBloc: args.signInFormBloc,
        ).wrappedRoute(context),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ForgotPasswordScreen arguments holder class
class ForgotPasswordScreenArguments {
  final Key key;
  final SignInFormBloc signInFormBloc;
  ForgotPasswordScreenArguments({this.key, @required this.signInFormBloc});
}

/// CreateUserScreen arguments holder class
class CreateUserScreenArguments {
  final Key key;
  final SignInFormBloc signInFormBloc;
  CreateUserScreenArguments({this.key, @required this.signInFormBloc});
}

/// CreatePasswordScreen arguments holder class
class CreatePasswordScreenArguments {
  final Key key;
  final SignInFormBloc signInFormBloc;
  CreatePasswordScreenArguments({this.key, @required this.signInFormBloc});
}

/// AddPhoneOrEmailScreen arguments holder class
class AddPhoneOrEmailScreenArguments {
  final Key key;
  final SignInFormBloc signInFormBloc;
  AddPhoneOrEmailScreenArguments({this.key, @required this.signInFormBloc});
}

/// ConfirmScreen arguments holder class
class ConfirmScreenArguments {
  final Key key;
  final SignInFormBloc signInFormBloc;
  ConfirmScreenArguments({this.key, @required this.signInFormBloc});
}
