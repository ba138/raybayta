import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                height: 80,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg"),
                  ),
                  SizedBox(width: 12),
                  Icon(Icons.arrow_forward),
                  SizedBox(width: 12),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://static.vecteezy.com/system/resources/thumbnails/004/899/833/small_2x/beautiful-girl-with-blue-hair-avatar-of-woman-for-social-network-vector.jpg"),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Now You Are",
                style: GoogleFonts.getFont(
                  "Poppins",
                  textStyle: TextStyle(
                    fontSize: 24,
                    color: AppColors.darkOnBackgroundColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                "Connected",
                style: GoogleFonts.getFont(
                  "Poppins",
                  textStyle: TextStyle(
                    fontSize: 24,
                    color: AppColors.darkPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Perfect solution of connecting with anyone\n easy and more secure",
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  "Poppins",
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: AppColors.darkOnBackgroundColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Spacer(),
              SlideAction(
                onSubmit: () {},
                sliderButtonIcon: const Icon(Icons.arrow_forward),
                innerColor: AppColors.darkPrimaryColor,
                outerColor: AppColors.darkContainerColor,
                text: "Slide to start now",
                textStyle: GoogleFonts.getFont(
                  "Poppins",
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: AppColors.darkOnBackgroundColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
