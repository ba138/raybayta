import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;
  Future<void> login(String email, String password) async {
    isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      isLoading.value = false;
      Get.offNamedUntil("/homeView", (route) => route.isFirst);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        isLoading.value = false;

        Get.snackbar("Error", "User not Found");
      } else if (e.code == 'wrong-password') {
        isLoading.value = false;

        Get.snackbar("Error", "Wrong password");
      }
    } catch (e) {
      isLoading.value = false;

      debugPrint(e.toString());
    }
  }

  Future<void> createUser(String email, String password) async {
    isLoading.value = true;

    try {
      auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      isLoading.value = false;

      print("account created");
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak passowrd") {
        isLoading.value = false;

        Get.snackbar("Warning", "Weak Password");
      } else if (e.code == "email-already-in-use") {
        isLoading.value = false;

        Get.snackbar("Error", "Email is already register");
      }
    } catch (e) {
      isLoading.value = false;

      debugPrint(
        e.toString(),
      );
    }
  }

  Future<void> logout() async {
    await auth.signOut();
    Get.offAllNamed("/loginView");
  }
}
