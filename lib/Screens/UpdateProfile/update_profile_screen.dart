import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Update Profile",
          style: GoogleFonts.getFont(
            "Poppins",
            textStyle: TextStyle(
              fontSize: 16,
              color: AppColors.darkOnBackgroundColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(
                10,
              ),
              decoration: BoxDecoration(
                color: AppColors.darkContainerColor,
                borderRadius: BorderRadius.circular(
                  12,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: AppColors.darkBackgroundColor,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add_a_photo,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Personal Info",
                              style: GoogleFonts.getFont(
                                "Poppins",
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.darkOnBackgroundColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
