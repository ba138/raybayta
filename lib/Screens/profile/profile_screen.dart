import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';

import 'package:raybayta/Screens/profile/Widgets/userInfo_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: GoogleFonts.getFont(
            "Poppins",
            textStyle: TextStyle(
              fontSize: 16,
              color: AppColors.darkOnBackgroundColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed("/updateProfileView");
              },
              icon: const Icon(Icons.edit))
        ],
      ),
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            UserinfoWidget(),
          ],
        ),
      )),
    );
  }
}
