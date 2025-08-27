// ignore_for_file: unused_element

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meetmax/features/auth_screens/auth_repo/auth_repo.dart';
import 'package:meetmax/features/auth_screens/auth_repo/auth_state.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository();
});

final authControllerProvider =
    StateNotifierProvider<AuthController, AsyncValue<AuthUser?>>((ref) {
      final repo = ref.watch(authRepositoryProvider);
      return AuthController(repo);
    });

class AuthController extends StateNotifier<AsyncValue<AuthUser?>> {
  final AuthRepository _repo;

  AuthController(this._repo) : super(const AsyncData(null));

  Future<void> signUp(String email, String password) async {
    state = AsyncData(AuthUser(uid: '', isLoading: true));
    try {
      final user = await _repo.signUp(email, password);
      state = AsyncData(user?.copyWith(isLoading: false));
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }

  Future<void> signIn(String email, String password) async {
    state = AsyncData(AuthUser(uid: '', isLoading: true));
    try {
      final user = await _repo.signIn(email, password);
      state = AsyncData(user?.copyWith(isLoading: false));
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }

  Future<void> forgotPassword(String email) async {
    state = AsyncData(AuthUser(uid: '', isLoading: true));
    try {
      await _repo.sendPasswordResetEmail(email);
      state = const AsyncData(null);
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }
}

extension on AuthUser {
  AuthUser copyWith({
    String? uid,
    String? email,
    String? displayName,
    bool? isLoading,
  }) {
    return AuthUser(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
