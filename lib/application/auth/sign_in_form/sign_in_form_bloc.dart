import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pickome/domain/auth/auth_failure.dart';
import 'package:pickome/domain/auth/i_auth_facade.dart';
import 'package:pickome/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: Username(e.usernameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phoneNumber: PhoneNumber(e.phoneNumberStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword,
        );
      },
      signInWithGooglePressed: (e) async* {
        /// First, we'll indicate that the form is in the process of being submitted and
        /// once the signInWithGoogle method had a chance to run,
        /// we'll yield a state containing either a failure (AuthFailure) or success (Unit).
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess));
      },
      forgotPasswordPressed: (e) async* {
        final isEmailValid = state.emailAddress.isValid();

        if (isEmailValid) {
          yield state.copyWith(
            forgotPasswordRequestSent: true,
          );
        }

        yield state.copyWith(
          forgotPasswordRequestSent: false,
        );
      },
      registerWithPickomePressed: (e) async* {
        yield* _performActionOnAuthFacadeWithPickome(
          _authFacade.registerWithPickome,
        );
      },
      signInWithPickomePressed: (e) async* {
        yield* _performActionOnAuthFacadeWithPickome(
          _authFacade.signInWithPickome,
        );
      },
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithPickome(
      Future<Either<AuthFailure, Unit>> Function({
    @required Username username,
    @required EmailAddress emailAddress,
    @required PhoneNumber phoneNumber,
    @required Password password,
  })
          forwardedCall) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    /// 1. Check if the entered EmailAddress and Password are valid.
    final isUsernameValid = state.username.isValid();
    final isEmailValid = state.emailAddress.isValid();
    final isPhoneNumberValid = state.phoneNumber.isValid();
    final isPasswordValid = state.password.isValid();

    /// 2. If valid, use IAuthFacade and yield Some<Right<Unit>> in the authFailureOrSuccessOption state field.
    if ((isUsernameValid || isEmailValid || isPhoneNumberValid) &&
        isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        username: state.username,
        emailAddress: state.emailAddress,
        phoneNumber: state.phoneNumber,
        password: state.password,
      );
    }

    /// 3. If invalid, indicate to start showing error messages and keep the authFailureOrSuccessOption set to None.
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      // optionOf is equivalent to:
      // failureOrSuccess == null ? none() : some(failureOrSuccess)
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    /// 1. Check if the entered EmailAddress and Password are valid.
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    /// 2. If valid, use IAuthFacade and yield Some<Right<Unit>> in the authFailureOrSuccessOption state field.
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    /// 3. If invalid, indicate to start showing error messages and keep the authFailureOrSuccessOption set to None.
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      // optionOf is equivalent to:
      // failureOrSuccess == null ? none() : some(failureOrSuccess)
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
