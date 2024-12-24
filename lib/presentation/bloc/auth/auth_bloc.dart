import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _firebaseAuth;

  AuthBloc(this._firebaseAuth) : super(AuthState.initial()) {
    on<_Login>(_onLogin);
    on<_Register>(_onRegister);
    on<_Logout>(_onLogout);
  }

  // Login event handler
  FutureOr<void> _onLogin(_Login event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true)); 
    try {
       await _firebaseAuth.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        message: 'Login Successful!',
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        isError: true,
        message: 'Login Failed: $e',
      ));
    }
  }

  // Register event handler
  FutureOr<void> _onRegister(_Register event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true)); // Set loading state
    try {
       await _firebaseAuth.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        message: 'Registration Successful!',
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        isError: true,
        message: 'Registration Failed: $e',
      ));
    }
  }

  // Logout event handler
  FutureOr<void> _onLogout(_Logout event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true)); 
    try {
      await _firebaseAuth.signOut();
      emit(state.copyWith(
        isLoading: false,
        isSuccess: true,
        message: 'Logout Successful!',
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        isError: true,
        message: 'Logout Failed: $e',
      ));
    }
  }
}
