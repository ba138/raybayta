import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';

class ContactChatTile extends StatelessWidget {
  const ContactChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      padding: const EdgeInsets.all(
        10,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.darkContainerColor,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: AppColors.darkPrimaryColor,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
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
                    "Message",
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
            ],
          ),
          Text(
            "Time",
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
    );
  }
}
