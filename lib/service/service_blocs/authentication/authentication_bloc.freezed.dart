// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogIn value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogIn value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogIn value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationEventCopyWith<AuthenticationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$LogInCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory _$$LogInCopyWith(_$LogIn value, $Res Function(_$LogIn) then) =
      __$$LogInCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$$LogInCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$LogInCopyWith<$Res> {
  __$$LogInCopyWithImpl(_$LogIn _value, $Res Function(_$LogIn) _then)
      : super(_value, (v) => _then(v as _$LogIn));

  @override
  _$LogIn get _value => super._value as _$LogIn;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$LogIn(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogIn implements LogIn {
  const _$LogIn(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogIn &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$LogInCopyWith<_$LogIn> get copyWith =>
      __$$LogInCopyWithImpl<_$LogIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? login,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogIn value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LogIn value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogIn value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LogIn implements AuthenticationEvent {
  const factory LogIn(final String email, final String password) = _$LogIn;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LogInCopyWith<_$LogIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get wrongUser => throw _privateConstructorUsedError;
  bool get connectionTimeOutError => throw _privateConstructorUsedError;
  bool get errorOccured => throw _privateConstructorUsedError;
  bool get loggingSucess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool wrongUser,
      bool connectionTimeOutError,
      bool errorOccured,
      bool loggingSucess});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? wrongUser = freezed,
    Object? connectionTimeOutError = freezed,
    Object? errorOccured = freezed,
    Object? loggingSucess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      wrongUser: wrongUser == freezed
          ? _value.wrongUser
          : wrongUser // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionTimeOutError: connectionTimeOutError == freezed
          ? _value.connectionTimeOutError
          : connectionTimeOutError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorOccured: errorOccured == freezed
          ? _value.errorOccured
          : errorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      loggingSucess: loggingSucess == freezed
          ? _value.loggingSucess
          : loggingSucess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationStateCopyWith(_$_AuthenticationState value,
          $Res Function(_$_AuthenticationState) then) =
      __$$_AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool wrongUser,
      bool connectionTimeOutError,
      bool errorOccured,
      bool loggingSucess});
}

/// @nodoc
class __$$_AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthenticationStateCopyWith<$Res> {
  __$$_AuthenticationStateCopyWithImpl(_$_AuthenticationState _value,
      $Res Function(_$_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationState));

  @override
  _$_AuthenticationState get _value => super._value as _$_AuthenticationState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? wrongUser = freezed,
    Object? connectionTimeOutError = freezed,
    Object? errorOccured = freezed,
    Object? loggingSucess = freezed,
  }) {
    return _then(_$_AuthenticationState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      wrongUser: wrongUser == freezed
          ? _value.wrongUser
          : wrongUser // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionTimeOutError: connectionTimeOutError == freezed
          ? _value.connectionTimeOutError
          : connectionTimeOutError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorOccured: errorOccured == freezed
          ? _value.errorOccured
          : errorOccured // ignore: cast_nullable_to_non_nullable
              as bool,
      loggingSucess: loggingSucess == freezed
          ? _value.loggingSucess
          : loggingSucess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {required this.isLoading,
      required this.wrongUser,
      required this.connectionTimeOutError,
      required this.errorOccured,
      required this.loggingSucess});

  @override
  final bool isLoading;
  @override
  final bool wrongUser;
  @override
  final bool connectionTimeOutError;
  @override
  final bool errorOccured;
  @override
  final bool loggingSucess;

  @override
  String toString() {
    return 'AuthenticationState(isLoading: $isLoading, wrongUser: $wrongUser, connectionTimeOutError: $connectionTimeOutError, errorOccured: $errorOccured, loggingSucess: $loggingSucess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.wrongUser, wrongUser) &&
            const DeepCollectionEquality()
                .equals(other.connectionTimeOutError, connectionTimeOutError) &&
            const DeepCollectionEquality()
                .equals(other.errorOccured, errorOccured) &&
            const DeepCollectionEquality()
                .equals(other.loggingSucess, loggingSucess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(wrongUser),
      const DeepCollectionEquality().hash(connectionTimeOutError),
      const DeepCollectionEquality().hash(errorOccured),
      const DeepCollectionEquality().hash(loggingSucess));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      __$$_AuthenticationStateCopyWithImpl<_$_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {required final bool isLoading,
      required final bool wrongUser,
      required final bool connectionTimeOutError,
      required final bool errorOccured,
      required final bool loggingSucess}) = _$_AuthenticationState;

  @override
  bool get isLoading;
  @override
  bool get wrongUser;
  @override
  bool get connectionTimeOutError;
  @override
  bool get errorOccured;
  @override
  bool get loggingSucess;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationStateCopyWith<_$_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
