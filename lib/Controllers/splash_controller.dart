import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final auth = FirebaseAuth.instance;
  void onInt() async {
    super.onInit();
    await handleUser();
  }

  Future<void> handleUser() async {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAllNamed("/homeView");
      },
    );
  }
}
