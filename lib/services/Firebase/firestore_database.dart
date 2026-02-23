import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDatabase {
  //FirebaseFirestore instance = FirebaseFirestore();

  //add data in firestore database
  Future<String?> saveUserData(
    String uid,
    String email,

    String password,
  ) async {
    try {
      await FirebaseFirestore.instance.collection("User").doc(uid).set({
        "email": email,
        "password": password,
        "CreatedAt": DateTime.now(),
      });
      return null;
    } on FirebaseException catch (e) {
      return e.message;
    }
  }
}
