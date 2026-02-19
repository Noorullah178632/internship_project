import 'package:first_app/services/Firebase/firebase_auth_services.dart';
import 'package:flutter/material.dart';

class AuthenticationViewModel extends ChangeNotifier {
  //make a instance of firebaseauthservices class
  FirebaseAuthServices firebaseAuthServices = FirebaseAuthServices();
  //bool variable
  bool isLoading = false;
  //error variable
  String? errorMessage;

  //function to get the value
  Future signUp(String email, String password) async {
    //when the function call the isloading will be true
    isLoading = true;
    notifyListeners();
    //now call the firebase services
    String? error = await firebaseAuthServices.signUp(
      email,
      password,
    ); //we will get either error or success
    //now loading set to be true
    isLoading = false;
    if (error != null) {
      errorMessage = error;
      notifyListeners();
      return false;
    }
    errorMessage = null;
    notifyListeners();
    return true;
  }
}
