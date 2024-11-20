import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raybayta/Models/userModel.dart';

class ProfileController extends GetxController {
  final auth = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  Rx<UserModel> currentUser = UserModel().obs;
  @override
  void onInit() async {
    super.onInit();
    await getUserDetails();
  }

  Future<void> getUserDetails() async {
    try {
      if (auth.currentUser == null) {
        debugPrint("No user is logged in.");
        return;
      }
      final userDoc =
          await db.collection("Users").doc(auth.currentUser!.uid).get();
      if (userDoc.exists && userDoc.data() != null) {
        currentUser.value = UserModel.fromJson(userDoc.data()!);
      } else {
        debugPrint("No user data found in Firestore for this UID.");
      }
    } catch (e) {
      debugPrint("Error fetching data from Firestore: $e");
    }
  }
}
