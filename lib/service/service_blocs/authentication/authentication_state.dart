part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required bool isLoading,
    required bool wrongUser,
    required bool connectionTimeOutError,
    required bool errorOccured,
    required bool loggingSucess,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() => const AuthenticationState(
      isLoading: false,
      connectionTimeOutError: false,
      wrongUser: false,
      errorOccured: false,
      loggingSucess: true
      );
}
