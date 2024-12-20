import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:raybayta/Screens/Auth/Widgets/login_tabbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                "Logo",
                style: GoogleFonts.getFont(
                  "Poppins",
                  textStyle: TextStyle(
                    fontSize: 30,
                    color: AppColors.darkOnBackgroundColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "Raybayta",
                style: GoogleFonts.getFont(
                  "Poppins",
                  textStyle: TextStyle(
                    fontSize: 24,
                    color: AppColors.darkPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const LoginTabbar(),
            ],
          ),
        ),
      )),
    );
  }
}
