import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:meetmax/features/auth_screens/auth_repo/auth_state.dart';

class AuthRepository {
  final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;

  Future<AuthUser?> signUp(String email, String password) async {
    try {
      final cred = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return cred.user != null
          ? AuthUser.fromFirebaseUser(cred.user!).copyWith(isLoading: false)
          : null;
    } catch (e) {
      rethrow;
    }
  }

  Future<AuthUser?> signIn(String email, String password) async {
    try {
      final cred = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return cred.user != null
          ? AuthUser.fromFirebaseUser(cred.user!).copyWith(isLoading: false)
          : null;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      rethrow;
    }
  }
}
