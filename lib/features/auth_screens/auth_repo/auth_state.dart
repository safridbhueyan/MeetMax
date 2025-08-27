import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

class AuthUser {
  final String uid;
  final String? email;
  final String? displayName;
  final bool isLoading;

  AuthUser({
    required this.uid,
    this.email,
    this.displayName,
    this.isLoading = false,
  });

  // Factory method to create AuthUser from Firebase User
  factory AuthUser.fromFirebaseUser(firebase_auth.User user) {
    return AuthUser(
      uid: user.uid,
      email: user.email,
      displayName: user.displayName,
      isLoading: false,
    );
  }

  // Convert AuthUser to JSON for potential storage or serialization
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'isLoading': isLoading,
    };
  }

  // Add copyWith method for immutability
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
