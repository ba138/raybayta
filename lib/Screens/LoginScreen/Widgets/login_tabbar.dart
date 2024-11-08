import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';

class LoginTabbar extends StatelessWidget {
  const LoginTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
        color: AppColors.darkContainerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      padding: const EdgeInsets.all(
        20,
      ),
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      const SizedBox(
                        height: 5,
                      ),
                      AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: 3,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColors.darkPrimaryColor,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Signup",
                        style: GoogleFonts.getFont(
                          "Poppins",
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: AppColors.darkOnContainerColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: 3,
                        width: 100,
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
    );
  }
}
