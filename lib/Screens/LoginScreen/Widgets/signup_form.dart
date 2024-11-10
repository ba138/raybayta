import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:raybayta/Widgets/primary_button.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        TextField(
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(12),
            fillColor: AppColors.darkBackgroundColor,
            prefixIcon: const Icon(Icons.person_2_outlined),
            filled: true,
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            hintText: 'Full Name',
            hintStyle: GoogleFonts.getFont(
              "Poppins",
              textStyle: TextStyle(
                fontSize: 14,
                color: AppColors.darkOnBackgroundColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        TextField(
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(12),
            fillColor: AppColors.darkBackgroundColor,
            prefixIcon: const Icon(Icons.alternate_email_outlined),
            filled: true,
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            hintText: 'Email',
            hintStyle: GoogleFonts.getFont(
              "Poppins",
              textStyle: TextStyle(
                fontSize: 14,
                color: AppColors.darkOnBackgroundColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        TextField(
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(12),
            fillColor: AppColors.darkBackgroundColor,
            prefixIcon: const Icon(
              Icons.password_outlined,
            ),
            filled: true,
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            hintText: 'Password',
            hintStyle: GoogleFonts.getFont(
              "Poppins",
              textStyle: TextStyle(
                fontSize: 14,
                color: AppColors.darkOnBackgroundColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        PrimaryButton(
          title: "SIGNUP",
          ontap: () {},
        ),
      ],
    );
  }
}
