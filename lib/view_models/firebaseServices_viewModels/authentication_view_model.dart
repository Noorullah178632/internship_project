import 'package:first_app/services/Firebase/firebase_auth_services.dart';
import 'package:flutter/material.dart';

class AuthenticationViewModel extends ChangeNotifier {
  //make a instance of firebaseauthservices class
  final FirebaseAuthServices firebaseAuthServices = FirebaseAuthServices();
  //bool variable
  bool isLoading = false;
  //error variable
  String? errorMessage;
  // Helper to update loading state
  void _setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
  //Common Method for all the authentication Function

  Future<bool> _handleAuth(Future<String?> Function() authFunction) async {
    _setLoading(true);
    final message = await authFunction();
    _setLoading(false);

    if (message != null) {
      errorMessage = message;
      notifyListeners();
      return false;
    }

    errorMessage = null;
    notifyListeners();
    return true;
  }

  //Function: SignUP
  Future<bool> signUp(String email, String password) {
    return _handleAuth(() => firebaseAuthServices.signUp(email, password));
  }

  //Funtion: SignIN
  Future<bool> signIn(String email, String password) {
    return _handleAuth(() => firebaseAuthServices.signIn(email, password));
  }

  //Function : Forget Password
  Future<bool> forgetPassword(String email) {
    return _handleAuth(() => firebaseAuthServices.forgetPassword(email));
  }

  //sign out
  Future<void> signOut() async {
    _setLoading(true);

    try {
      await firebaseAuthServices.signOut();
    } catch (e) {
      errorMessage = e.toString();
    }
    _setLoading(false);
    notifyListeners();
  }
}
