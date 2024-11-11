import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
        ),
        titleSpacing: 0, // Adjust this value as needed
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.darkPrimaryColor,
            ),
            const SizedBox(width: 8), // Adjust width here if needed
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // Shrinks the column height
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
                  "Online",
                  style: GoogleFonts.getFont(
                    "Poppins",
                    textStyle: TextStyle(
                      fontSize: 10,
                      color: AppColors.darkPrimaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.phone_outlined,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call_outlined,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              constraints: BoxConstraints(
                  minWidth: 100,
                  maxWidth: MediaQuery.sizeOf(context).width / 1.3),
              decoration: BoxDecoration(
                color: AppColors.darkContainerColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(
                    10,
                  ),
                  topRight: Radius.circular(
                    10,
                  ),
                  bottomLeft: Radius.circular(
                    0,
                  ),
                  bottomRight: Radius.circular(
                    10,
                  ),
                ),
              ),
              child: const Row(
                children: [
                  Flexible(
                      child: Text(
                          "yfger iurgwe usgdafdsan sdbfjhref jusdgfsd usadgfgds "))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
