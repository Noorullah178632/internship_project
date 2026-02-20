import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  //make a instance for all authentication operation
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //sign up service
  Future<String?> signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return null;
    } on FirebaseException catch (e) {
      return e.message;
    }
  }

  //sign in service
  Future<String?> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //forgot password
  Future<String?> forgetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //signOut
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
