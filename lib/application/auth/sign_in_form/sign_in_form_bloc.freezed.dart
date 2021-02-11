// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

// ignore: unused_element
  _UsernameChanged usernameChanged(String usernameStr) {
    return _UsernameChanged(
      usernameStr,
    );
  }

// ignore: unused_element
  _EmailChanged emailChanged(String emailStr) {
    return _EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  _PhoneNumberChanged phoneNumberChanged(String phoneNumberStr) {
    return _PhoneNumberChanged(
      phoneNumberStr,
    );
  }

// ignore: unused_element
  _PasswordChanged passwordChanged(String passwordStr) {
    return _PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  _RegisterWithPickomePressed registerWithPickomePressed() {
    return const _RegisterWithPickomePressed();
  }

// ignore: unused_element
  _RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const _RegisterWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  _ForgotPassword forgotPasswordPressed() {
    return const _ForgotPassword();
  }

// ignore: unused_element
  _SignInWithPickomePressed signInWithPickomePressed() {
    return const _SignInWithPickomePressed();
  }

// ignore: unused_element
  _SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const _SignInWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  _SignInWithGooglePressed signInWithGooglePressed() {
    return const _SignInWithGooglePressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String usernameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithPickomePressed(),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult forgotPasswordPressed(),
    @required TResult signInWithPickomePressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String usernameStr),
    TResult emailChanged(String emailStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithPickomePressed(),
    TResult registerWithEmailAndPasswordPressed(),
    TResult forgotPasswordPressed(),
    TResult signInWithPickomePressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult phoneNumberChanged(_PhoneNumberChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required TResult forgotPasswordPressed(_ForgotPassword value),
    @required TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(_UsernameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult phoneNumberChanged(_PhoneNumberChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult forgotPasswordPressed(_ForgotPassword value),
    TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(_UsernameChanged(
      usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

/// @nodoc
class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.usernameStr) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'SignInFormEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @JsonKey(ignore: true)
  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String usernameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithPickomePressed(),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult forgotPasswordPressed(),
    @required TResult signInWithPickomePressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String usernameStr),
    TResult emailChanged(String emailStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithPickomePressed(),
    TResult registerWithEmailAndPasswordPressed(),
    TResult forgotPasswordPressed(),
    TResult signInWithPickomePressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult phoneNumberChanged(_PhoneNumberChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required TResult forgotPasswordPressed(_ForgotPassword value),
    @required TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(_UsernameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult phoneNumberChanged(_PhoneNumberChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult forgotPasswordPressed(_ForgotPassword value),
    TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements SignInFormEvent {
  const factory _UsernameChanged(String usernameStr) = _$_UsernameChanged;

  String get usernameStr;
  @JsonKey(ignore: true)
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(_EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

/// @nodoc
class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String usernameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithPickomePressed(),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult forgotPasswordPressed(),
    @required TResult signInWithPickomePressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String usernameStr),
    TResult emailChanged(String emailStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithPickomePressed(),
    TResult registerWithEmailAndPasswordPressed(),
    TResult forgotPasswordPressed(),
    TResult signInWithPickomePressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult phoneNumberChanged(_PhoneNumberChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required TResult forgotPasswordPressed(_ForgotPassword value),
    @required TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(_UsernameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult phoneNumberChanged(_PhoneNumberChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult forgotPasswordPressed(_ForgotPassword value),
    TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignInFormEvent {
  const factory _EmailChanged(String emailStr) = _$_EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith;
}

/// @nodoc
abstract class _$PhoneNumberChangedCopyWith<$Res> {
  factory _$PhoneNumberChangedCopyWith(
          _PhoneNumberChanged value, $Res Function(_PhoneNumberChanged) then) =
      __$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

/// @nodoc
class __$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(
      _PhoneNumberChanged _value, $Res Function(_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChanged));

  @override
  _PhoneNumberChanged get _value => super._value as _PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumberStr = freezed,
  }) {
    return _then(_PhoneNumberChanged(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr as String,
    ));
  }
}

/// @nodoc
class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumberStr)
      : assert(phoneNumberStr != null);

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'SignInFormEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneNumberChanged &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberStr, phoneNumberStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumberStr);

  @JsonKey(ignore: true)
  @override
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String usernameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithPickomePressed(),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult forgotPasswordPressed(),
    @required TResult signInWithPickomePressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String usernameStr),
    TResult emailChanged(String emailStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithPickomePressed(),
    TResult registerWithEmailAndPasswordPressed(),
    TResult forgotPasswordPressed(),
    TResult signInWithPickomePressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult phoneNumberChanged(_PhoneNumberChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required TResult forgotPasswordPressed(_ForgotPassword value),
    @required TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(_UsernameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult phoneNumberChanged(_PhoneNumberChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult forgotPasswordPressed(_ForgotPassword value),
    TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements SignInFormEvent {
  const factory _PhoneNumberChanged(String phoneNumberStr) =
      _$_PhoneNumberChanged;

  String get phoneNumberStr;
  @JsonKey(ignore: true)
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(_PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String usernameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithPickomePressed(),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult forgotPasswordPressed(),
    @required TResult signInWithPickomePressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String usernameStr),
    TResult emailChanged(String emailStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithPickomePressed(),
    TResult registerWithEmailAndPasswordPressed(),
    TResult forgotPasswordPressed(),
    TResult signInWithPickomePressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult phoneNumberChanged(_PhoneNumberChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required TResult forgotPasswordPressed(_ForgotPassword value),
    @required TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(_UsernameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult phoneNumberChanged(_PhoneNumberChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult forgotPasswordPressed(_ForgotPassword value),
    TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignInFormEvent {
  const factory _PasswordChanged(String passwordStr) = _$_PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith;
}

/// @nodoc
abstract class _$RegisterWithPickomePressedCopyWith<$Res> {
  factory _$RegisterWithPickomePressedCopyWith(
          _RegisterWithPickomePressed value,
          $Res Function(_RegisterWithPickomePressed) then) =
      __$RegisterWithPickomePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterWithPickomePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$RegisterWithPickomePressedCopyWith<$Res> {
  __$RegisterWithPickomePressedCopyWithImpl(_RegisterWithPickomePressed _value,
      $Res Function(_RegisterWithPickomePressed) _then)
      : super(_value, (v) => _then(v as _RegisterWithPickomePressed));

  @override
  _RegisterWithPickomePressed get _value =>
      super._value as _RegisterWithPickomePressed;
}

/// @nodoc
class _$_RegisterWithPickomePressed implements _RegisterWithPickomePressed {
  const _$_RegisterWithPickomePressed();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithPickomePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RegisterWithPickomePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String usernameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithPickomePressed(),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult forgotPasswordPressed(),
    @required TResult signInWithPickomePressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return registerWithPickomePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String usernameStr),
    TResult emailChanged(String emailStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithPickomePressed(),
    TResult registerWithEmailAndPasswordPressed(),
    TResult forgotPasswordPressed(),
    TResult signInWithPickomePressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithPickomePressed != null) {
      return registerWithPickomePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult phoneNumberChanged(_PhoneNumberChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required TResult forgotPasswordPressed(_ForgotPassword value),
    @required TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return registerWithPickomePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(_UsernameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult phoneNumberChanged(_PhoneNumberChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult forgotPasswordPressed(_ForgotPassword value),
    TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithPickomePressed != null) {
      return registerWithPickomePressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithPickomePressed implements SignInFormEvent {
  const factory _RegisterWithPickomePressed() = _$_RegisterWithPickomePressed;
}

/// @nodoc
abstract class _$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$RegisterWithEmailAndPasswordPressedCopyWith(
          _RegisterWithEmailAndPasswordPressed value,
          $Res Function(_RegisterWithEmailAndPasswordPressed) then) =
      __$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  __$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      _RegisterWithEmailAndPasswordPressed _value,
      $Res Function(_RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _RegisterWithEmailAndPasswordPressed));

  @override
  _RegisterWithEmailAndPasswordPressed get _value =>
      super._value as _RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
class _$_RegisterWithEmailAndPasswordPressed
    implements _RegisterWithEmailAndPasswordPressed {
  const _$_RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String usernameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithPickomePressed(),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult forgotPasswordPressed(),
    @required TResult signInWithPickomePressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String usernameStr),
    TResult emailChanged(String emailStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithPickomePressed(),
    TResult registerWithEmailAndPasswordPressed(),
    TResult forgotPasswordPressed(),
    TResult signInWithPickomePressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult phoneNumberChanged(_PhoneNumberChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required TResult forgotPasswordPressed(_ForgotPassword value),
    @required TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(_UsernameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult phoneNumberChanged(_PhoneNumberChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult forgotPasswordPressed(_ForgotPassword value),
    TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _RegisterWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory _RegisterWithEmailAndPasswordPressed() =
      _$_RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$ForgotPasswordCopyWith<$Res> {
  factory _$ForgotPasswordCopyWith(
          _ForgotPassword value, $Res Function(_ForgotPassword) then) =
      __$ForgotPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$ForgotPasswordCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$ForgotPasswordCopyWith<$Res> {
  __$ForgotPasswordCopyWithImpl(
      _ForgotPassword _value, $Res Function(_ForgotPassword) _then)
      : super(_value, (v) => _then(v as _ForgotPassword));

  @override
  _ForgotPassword get _value => super._value as _ForgotPassword;
}

/// @nodoc
class _$_ForgotPassword implements _ForgotPassword {
  const _$_ForgotPassword();

  @override
  String toString() {
    return 'SignInFormEvent.forgotPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ForgotPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String usernameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithPickomePressed(),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult forgotPasswordPressed(),
    @required TResult signInWithPickomePressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return forgotPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String usernameStr),
    TResult emailChanged(String emailStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithPickomePressed(),
    TResult registerWithEmailAndPasswordPressed(),
    TResult forgotPasswordPressed(),
    TResult signInWithPickomePressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (forgotPasswordPressed != null) {
      return forgotPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult phoneNumberChanged(_PhoneNumberChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required TResult forgotPasswordPressed(_ForgotPassword value),
    @required TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return forgotPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(_UsernameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult phoneNumberChanged(_PhoneNumberChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult forgotPasswordPressed(_ForgotPassword value),
    TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (forgotPasswordPressed != null) {
      return forgotPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements SignInFormEvent {
  const factory _ForgotPassword() = _$_ForgotPassword;
}

/// @nodoc
abstract class _$SignInWithPickomePressedCopyWith<$Res> {
  factory _$SignInWithPickomePressedCopyWith(_SignInWithPickomePressed value,
          $Res Function(_SignInWithPickomePressed) then) =
      __$SignInWithPickomePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithPickomePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithPickomePressedCopyWith<$Res> {
  __$SignInWithPickomePressedCopyWithImpl(_SignInWithPickomePressed _value,
      $Res Function(_SignInWithPickomePressed) _then)
      : super(_value, (v) => _then(v as _SignInWithPickomePressed));

  @override
  _SignInWithPickomePressed get _value =>
      super._value as _SignInWithPickomePressed;
}

/// @nodoc
class _$_SignInWithPickomePressed implements _SignInWithPickomePressed {
  const _$_SignInWithPickomePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithPickomePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithPickomePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String usernameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithPickomePressed(),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult forgotPasswordPressed(),
    @required TResult signInWithPickomePressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithPickomePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String usernameStr),
    TResult emailChanged(String emailStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithPickomePressed(),
    TResult registerWithEmailAndPasswordPressed(),
    TResult forgotPasswordPressed(),
    TResult signInWithPickomePressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithPickomePressed != null) {
      return signInWithPickomePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult phoneNumberChanged(_PhoneNumberChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required TResult forgotPasswordPressed(_ForgotPassword value),
    @required TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithPickomePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(_UsernameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult phoneNumberChanged(_PhoneNumberChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult forgotPasswordPressed(_ForgotPassword value),
    TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithPickomePressed != null) {
      return signInWithPickomePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithPickomePressed implements SignInFormEvent {
  const factory _SignInWithPickomePressed() = _$_SignInWithPickomePressed;
}

/// @nodoc
abstract class _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$SignInWithEmailAndPasswordPressedCopyWith(
          _SignInWithEmailAndPasswordPressed value,
          $Res Function(_SignInWithEmailAndPasswordPressed) then) =
      __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  __$SignInWithEmailAndPasswordPressedCopyWithImpl(
      _SignInWithEmailAndPasswordPressed _value,
      $Res Function(_SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _SignInWithEmailAndPasswordPressed));

  @override
  _SignInWithEmailAndPasswordPressed get _value =>
      super._value as _SignInWithEmailAndPasswordPressed;
}

/// @nodoc
class _$_SignInWithEmailAndPasswordPressed
    implements _SignInWithEmailAndPasswordPressed {
  const _$_SignInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String usernameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithPickomePressed(),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult forgotPasswordPressed(),
    @required TResult signInWithPickomePressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String usernameStr),
    TResult emailChanged(String emailStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithPickomePressed(),
    TResult registerWithEmailAndPasswordPressed(),
    TResult forgotPasswordPressed(),
    TResult signInWithPickomePressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult phoneNumberChanged(_PhoneNumberChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required TResult forgotPasswordPressed(_ForgotPassword value),
    @required TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(_UsernameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult phoneNumberChanged(_PhoneNumberChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult forgotPasswordPressed(_ForgotPassword value),
    TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory _SignInWithEmailAndPasswordPressed() =
      _$_SignInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$SignInWithGooglePressedCopyWith<$Res> {
  factory _$SignInWithGooglePressedCopyWith(_SignInWithGooglePressed value,
          $Res Function(_SignInWithGooglePressed) then) =
      __$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements _$SignInWithGooglePressedCopyWith<$Res> {
  __$SignInWithGooglePressedCopyWithImpl(_SignInWithGooglePressed _value,
      $Res Function(_SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as _SignInWithGooglePressed));

  @override
  _SignInWithGooglePressed get _value =>
      super._value as _SignInWithGooglePressed;
}

/// @nodoc
class _$_SignInWithGooglePressed implements _SignInWithGooglePressed {
  const _$_SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String usernameStr),
    @required TResult emailChanged(String emailStr),
    @required TResult phoneNumberChanged(String phoneNumberStr),
    @required TResult passwordChanged(String passwordStr),
    @required TResult registerWithPickomePressed(),
    @required TResult registerWithEmailAndPasswordPressed(),
    @required TResult forgotPasswordPressed(),
    @required TResult signInWithPickomePressed(),
    @required TResult signInWithEmailAndPasswordPressed(),
    @required TResult signInWithGooglePressed(),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String usernameStr),
    TResult emailChanged(String emailStr),
    TResult phoneNumberChanged(String phoneNumberStr),
    TResult passwordChanged(String passwordStr),
    TResult registerWithPickomePressed(),
    TResult registerWithEmailAndPasswordPressed(),
    TResult forgotPasswordPressed(),
    TResult signInWithPickomePressed(),
    TResult signInWithEmailAndPasswordPressed(),
    TResult signInWithGooglePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(_UsernameChanged value),
    @required TResult emailChanged(_EmailChanged value),
    @required TResult phoneNumberChanged(_PhoneNumberChanged value),
    @required TResult passwordChanged(_PasswordChanged value),
    @required
        TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    @required
        TResult registerWithEmailAndPasswordPressed(
            _RegisterWithEmailAndPasswordPressed value),
    @required TResult forgotPasswordPressed(_ForgotPassword value),
    @required TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    @required
        TResult signInWithEmailAndPasswordPressed(
            _SignInWithEmailAndPasswordPressed value),
    @required TResult signInWithGooglePressed(_SignInWithGooglePressed value),
  }) {
    assert(usernameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(passwordChanged != null);
    assert(registerWithPickomePressed != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(forgotPasswordPressed != null);
    assert(signInWithPickomePressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(_UsernameChanged value),
    TResult emailChanged(_EmailChanged value),
    TResult phoneNumberChanged(_PhoneNumberChanged value),
    TResult passwordChanged(_PasswordChanged value),
    TResult registerWithPickomePressed(_RegisterWithPickomePressed value),
    TResult registerWithEmailAndPasswordPressed(
        _RegisterWithEmailAndPasswordPressed value),
    TResult forgotPasswordPressed(_ForgotPassword value),
    TResult signInWithPickomePressed(_SignInWithPickomePressed value),
    TResult signInWithEmailAndPasswordPressed(
        _SignInWithEmailAndPasswordPressed value),
    TResult signInWithGooglePressed(_SignInWithGooglePressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _SignInWithGooglePressed implements SignInFormEvent {
  const factory _SignInWithGooglePressed() = _$_SignInWithGooglePressed;
}

/// @nodoc
class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

// ignore: unused_element
  _SignInFormState call(
      {@required Username username,
      @required EmailAddress emailAddress,
      @required PhoneNumber phoneNumber,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required bool forgotPasswordRequestSent,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      username: username,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      forgotPasswordRequestSent: forgotPasswordRequestSent,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

/// @nodoc
mixin _$SignInFormState {
  Username get username;
  EmailAddress get emailAddress;
  PhoneNumber get phoneNumber;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  bool get forgotPasswordRequestSent;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      PhoneNumber phoneNumber,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      bool forgotPasswordRequestSent,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object username = freezed,
    Object emailAddress = freezed,
    Object phoneNumber = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object forgotPasswordRequestSent = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      forgotPasswordRequestSent: forgotPasswordRequestSent == freezed
          ? _value.forgotPasswordRequestSent
          : forgotPasswordRequestSent as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username username,
      EmailAddress emailAddress,
      PhoneNumber phoneNumber,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      bool forgotPasswordRequestSent,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object username = freezed,
    Object emailAddress = freezed,
    Object phoneNumber = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object forgotPasswordRequestSent = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      username: username == freezed ? _value.username : username as Username,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      forgotPasswordRequestSent: forgotPasswordRequestSent == freezed
          ? _value.forgotPasswordRequestSent
          : forgotPasswordRequestSent as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.username,
      @required this.emailAddress,
      @required this.phoneNumber,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.forgotPasswordRequestSent,
      @required this.authFailureOrSuccessOption})
      : assert(username != null),
        assert(emailAddress != null),
        assert(phoneNumber != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(forgotPasswordRequestSent != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final Username username;
  @override
  final EmailAddress emailAddress;
  @override
  final PhoneNumber phoneNumber;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool forgotPasswordRequestSent;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(username: $username, emailAddress: $emailAddress, phoneNumber: $phoneNumber, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, forgotPasswordRequestSent: $forgotPasswordRequestSent, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.forgotPasswordRequestSent,
                    forgotPasswordRequestSent) ||
                const DeepCollectionEquality().equals(
                    other.forgotPasswordRequestSent,
                    forgotPasswordRequestSent)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(forgotPasswordRequestSent) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required
              Username username,
          @required
              EmailAddress emailAddress,
          @required
              PhoneNumber phoneNumber,
          @required
              Password password,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              bool forgotPasswordRequestSent,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SignInFormState;

  @override
  Username get username;
  @override
  EmailAddress get emailAddress;
  @override
  PhoneNumber get phoneNumber;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get forgotPasswordRequestSent;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
