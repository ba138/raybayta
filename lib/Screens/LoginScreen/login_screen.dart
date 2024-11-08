import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
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
              height: 20,
            ),
            Container(
              height: 400,
              decoration: BoxDecoration(
                color: AppColors.darkContainerColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    20,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                "Login",
                                style: GoogleFonts.getFont(
                                  "Poppins",
                                  textStyle: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.darkOnContainerColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                height: 10,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.darkPrimaryColor,
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
