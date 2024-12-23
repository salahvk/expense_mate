import 'package:firebase_auth/firebase_auth.dart';

String? getUserEmail() {
  final user = FirebaseAuth.instance.currentUser;
  return user?.email; // Returns the email or null if not logged in
}


String normalizeEmail(String email) {
  return email.replaceAll('@', '_at_').replaceAll('.', '_dot_');
}

