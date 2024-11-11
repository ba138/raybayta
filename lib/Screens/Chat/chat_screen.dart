import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "Name",
              style: GoogleFonts.getFont(
                "Poppins",
                textStyle: TextStyle(
                  fontSize: 14,
                  color: AppColors.darkOnBackgroundColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              "Name",
              style: GoogleFonts.getFont(
                "Poppins",
                textStyle: TextStyle(
                  fontSize: 12,
                  color: AppColors.darkOnBackgroundColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
