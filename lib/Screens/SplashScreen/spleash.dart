import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raybayta/Controllers/splash_controller.dart';

class Spleash extends StatefulWidget {
  const Spleash({super.key});

  @override
  State<Spleash> createState() => _SpleashState();
}

class _SpleashState extends State<Spleash> {
  @override
  Widget build(BuildContext context) {
    SplashController splashController = Get.put(
      SplashController(),
    );
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Logo",
              style: TextStyle(fontSize: 28),
            ),
          ),
        ],
      ),
    );
  }
}
