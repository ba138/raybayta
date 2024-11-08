import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:raybayta/Widgets/primary_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        TextField(
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(12),
            fillColor: AppColors.darkBackgroundColor,
            prefixIcon: const Icon(Icons.alternate_email_outlined),
            filled: true,
            border: InputBorder.none,
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
          height: 12,
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
            border: InputBorder.none,
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
          height: 30,
        ),
        PrimaryButton(
          title: "LOGIN",
          ontap: () {},
        ),
      ],
    );
  }
}
