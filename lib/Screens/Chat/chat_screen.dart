import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:raybayta/Screens/Chat/Widgtes/chat_bubble.dart';

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
            ChatBubble(
              message: "Hello how are you",
              isComing: true,
              staus: "read",
              time: "10:10 AM",
              image: "",
            ),
            ChatBubble(
              message: "Hello how are you",
              isComing: false,
              staus: "read",
              time: "10:10 AM",
              image:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJzpEkv-vlwrVppb-PQuWArI1sXR9vAYAwNg&s",
            ),
          ],
        ),
      ),
    );
  }
}
