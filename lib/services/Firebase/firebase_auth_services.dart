import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  //make a instance for all authentication operation
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //sign up service
  Future<String?> signUp(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseException catch (e) {
      return e.message;
    }
  }
}
