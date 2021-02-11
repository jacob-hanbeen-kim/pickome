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
import 'package:pickome/infrastructure/core/connection.dart';

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
      final Connection con = Connection();
      final bool result =
          await con.authenticateUser(emailAddressStr, passwordStr);
      print(result);

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

  @override
  Future<Either<AuthFailure, Unit>> registerWithPickome(
      {Username username,
      Password password,
      EmailAddress emailAddress,
      PhoneNumber phoneNumber}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      if (emailAddress == null && phoneNumber == null) {
        print('You must provide emailAddress, or phoneNumber');
      }

      final usernameStr = username.getOrCrash();
      final passwordStr = password.getOrCrash();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == "ERROR_EMAIL_ALREADY_IN_USE") {
        return left(const AuthFailure.usernameAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithPickome(
      {Username username,
      EmailAddress emailAddress,
      PhoneNumber phoneNumber,
      Password password}) async {
    try {
      if (username == null && emailAddress == null && phoneNumber == null) {
        print('You must provide username, emailAddress, or phoneNumber');
      }

      String signInWith = '';

      if (username != null) {
        signInWith = username.getOrCrash();
      } else if (emailAddress != null) {
        signInWith = emailAddress.getOrCrash();
      } else if (phoneNumber != null) {
        signInWith = phoneNumber.getOrCrash();
      } else {
        print('Cannot sign in');
      }

      final passwordStr = password.getOrCrash();

      print('IN Cognito');
      print(signInWith);
      print(passwordStr);

      /// sign in
      final Connection con = Connection();
      final bool result = await con.authenticateUser(signInWith, passwordStr);
      print(result);

      if (result) {
        return right(unit);
      } else {
        return left(const AuthFailure.invalidCredentials());
      }
    } on PlatformException catch (e) {
      /// combine invalid password and email so hackers don't get hint of correct existing email
      if (e.code == "ERROR_WRONG_PASSWORD" ||
          e.code == "ERROR_USER_NOT_FOUND") {
        return left(const AuthFailure.invalidCredentials());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> checkIfExistingEmail(
      {Username emailAddress}) {
    // TODO: implement checkIfExistingEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> checkIfExistingPhoneNumber(
      {Username phoneNumber}) {
    // TODO: implement checkIfExistingPhoneNumber
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> checkIfExistingUsername(
      {Username username}) async {
    final usernameStr = username.getOrCrash();

    print(usernameStr);

    try {
      /// sign in
      final Connection con = Connection();
      // final bool result = await con.check(usernameStr);
      final bool result = true;
      print(result);

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
}
