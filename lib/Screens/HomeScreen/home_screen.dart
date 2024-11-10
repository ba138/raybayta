import 'package:flutter/material.dart';
import 'package:raybayta/Configs/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Raybayta"),
        backgroundColor: AppColors.darkOnContainerColor,
      ),
    );
  }
}
