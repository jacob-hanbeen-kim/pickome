import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
// import 'package:injectable/injectable.dart';
import 'package:pickome/domain/auth/auth_failure.dart';
import 'package:pickome/domain/auth/i_auth_facade.dart';
import 'package:pickome/domain/auth/value_objects.dart';
import 'package:pickome/domain/core/value_objects.dart';
import 'package:pickome/domain/model/user.dart';
import 'package:pickome/infrastructure/auth/cognito_user_mapper.dart';

// @prod
@LazySingleton(as: IAuthFacade)
class CognitoAuthFacade implements IAuthFacade {
  final GoogleSignIn _googleSignIn;

  CognitoAuthFacade(
    this._googleSignIn,
  );

  @override
  Future<Option<User>> getSignedInUser() async {
    /// fetch current user from cognito api call
    Future<User> response = Future<User>.value(User(
        id: UniqueId.fromUniqueString('uniqueId'), username: 'tempUsername'));

    // final User user = await response;
    const User user = null;

    return optionOf(CognitoUserMapper.toDomain(user));
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      /// create user
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "ERROR_EMAIL_ALREADY_IN_USE") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    print(emailAddressStr);
    print(passwordStr);

    try {
      /// sign in
      return right(unit);
    } on PlatformException catch (e) {
      /// combine invalid password and email so hackers don't get hint of correct existing email
      if (e.code == "ERROR_WRONG_PASSWORD" ||
          e.code == "ERROR_USER_NOT_FOUND") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      googleAuthentication.idToken;
      googleAuthentication.accessToken;

      // final authCredential = getCredential(googleAuthentication.idToken, googleAuthentication.accessToken);
      // await signIn(authCredential);
      return right(unit);
    } on PlatformException catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();

    /// WIth below code you don't need async and can just do
    /// signOut() =>
    /// Future.wait([
    ///   some async functions
    /// ])
  }
}
