import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:send_log/featuers/login/data/repos/auth_repo.dart';

part 'login_state.dart';

/// All the LOGIC for the login screen lives here.
///
/// [LoginView] only ever does two things with this class:
///  - calls `context.read<LoginCubit>().login(email, password)`
///  - listens to the emitted [LoginState]s to update itself
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepo) : super(const LoginInitial());

  final AuthRepo _authRepo;

  Future<void> login({
    required String email,
    required String password,
  }) async {
    if (email.trim().isEmpty || password.isEmpty) {
      emit(const LoginFailure('Please enter email and password.'));
      return;
    }

    emit(const LoginLoading());
    try {
      await _authRepo.login(email: email, password: password);
      emit(const LoginSuccess());
    } on FirebaseAuthException catch (e) {
      emit(LoginFailure(_mapErrorMessage(e)));
    } catch (_) {
      emit(const LoginFailure('Something went wrong. Please try again.'));
    }
  }

  String _mapErrorMessage(FirebaseAuthException e) {
    switch (e.code) {
      case 'invalid-email':
        return 'That email address looks invalid.';
      case 'user-disabled':
        return 'This account has been disabled.';
      case 'user-not-found':
        return 'No account found with this email.';
      case 'wrong-password':
      case 'invalid-credential':
        return 'Wrong email or password.';
      default:
        return e.message ?? 'Login failed. Please try again.';
    }
  }
}
