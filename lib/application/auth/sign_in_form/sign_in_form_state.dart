part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required Username username,
    @required EmailAddress emailAddress,
    @required PhoneNumber phoneNumber,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required bool forgotPasswordRequestSent,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        username: Username(''),
        emailAddress: EmailAddress(''),
        phoneNumber: PhoneNumber(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        forgotPasswordRequestSent: false,
        authFailureOrSuccessOption: none(),
      );
}
