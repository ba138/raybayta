import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;
  Future<void> login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("Error", "User not Found");
      } else if (e.code == 'wrong-password') {
        Get.snackbar("Error", "Wrong password");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> createUser(String email, String password) async {
    try {
      auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak passowrd") {
        Get.snackbar("Warning", "Weak Password");
      } else if (e.code == "email-already-in-use") {
        Get.snackbar("Error", "Email is already register");
      }
    } catch (e) {
      debugPrint(
        e.toString(),
      );
    }
  }
}
