part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool isSuccess,
    required bool isError,
    String? message,
  }) = _AuthState;

  factory AuthState.initial() => const AuthState(
        isLoading: false,
        isSuccess: false,
        isError: false,
        message: null,
      );
}
