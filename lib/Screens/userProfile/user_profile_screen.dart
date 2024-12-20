import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:raybayta/Controllers/auth_controller.dart';

import 'package:raybayta/Screens/userProfile/Widgets/userInfo_widget.dart';
import 'package:raybayta/Widgets/primary_button.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController auth = Get.put(AuthController());

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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const UserinfoWidget(),
            const Spacer(),
            PrimaryButton(
                title: "Logout",
                ontap: () {
                  auth.logout();
                }),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      )),
    );
  }
}
