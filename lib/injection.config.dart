// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'infrastructure/auth/cognito_auth_facade.dart';
import 'infrastructure/core/cognito_injectable_module.dart';
import 'infrastructure/auth/cognito_user_mapper.dart';
import 'domain/auth/i_auth_facade.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final cognitoInjectableModule = _$CognitoInjectableModule();
  gh.lazySingleton<CognitoUserMapper>(() => CognitoUserMapper());
  gh.lazySingleton<GoogleSignIn>(() => cognitoInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(() => CognitoAuthFacade(get<GoogleSignIn>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  return get;
}

class _$CognitoInjectableModule extends CognitoInjectableModule {}
