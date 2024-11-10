// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:raybayta/Configs/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  const PrimaryButton({
    super.key,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 56,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.darkPrimaryColor,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Center(
          child: Text(
            "LOGIN",
            style: GoogleFonts.getFont(
              "Poppins",
              textStyle: TextStyle(
                fontSize: 14,
                color: AppColors.darkOnBackgroundColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
