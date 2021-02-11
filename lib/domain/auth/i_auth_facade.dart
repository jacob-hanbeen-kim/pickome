import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:pickome/domain/auth/value_objects.dart';
import 'package:pickome/domain/model/user.dart';

import 'auth_failure.dart';

/// Facade is a design pattern for connecting two or more classes
/// with weird interfaces into just one simplified interface.
/// In our case, it will connect AWS Cognito and GoogleSignIn.
///
/// Facades are on the same level as repositories in the layer diagram.
/// They still deal with raw data from data sources and
/// they have the additional role of simplifying the interface of the contained classes.

/// dart only allows abstract classes
///  Therefore use "I" prefix to indicate interfaces
abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  // Note that Unit is used in place of void keyword
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> registerWithPickome({
    @required Username username,
    @required Password password,
    EmailAddress emailAddress,
    PhoneNumber phoneNumber,
  });

  Future<Either<AuthFailure, Unit>> signInWithPickome({
    Username username,
    EmailAddress emailAddress,
    PhoneNumber phoneNumber,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
