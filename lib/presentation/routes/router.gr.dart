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
import '../screens/register/create_user/create_user_screen.dart';
import '../screens/sign_in/sign_in_screen.dart';
import '../screens/splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String signInScreen = '/sign-in-screen';
  static const String forgotPasswordScreen = '/forgot-password-screen';
  static const String homeScreen = '/home-screen';
  static const String createUserScreen = '/create-user-screen';
  static const all = <String>{
    splashScreen,
    signInScreen,
    forgotPasswordScreen,
    homeScreen,
    createUserScreen,
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
