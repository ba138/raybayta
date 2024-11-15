import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.darkContainerColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-173524.jpg"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Basit Ali",
                            style: GoogleFonts.getFont(
                              "Poppins",
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: AppColors.darkOnBackgroundColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "basitalyshah51214@gmail.com",
                            style: GoogleFonts.getFont(
                              "Poppins",
                              textStyle: TextStyle(
                                fontSize: 14,
                                color: AppColors.darkOnContainerColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            padding: const EdgeInsets.all(
                              12,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.darkBackgroundColor,
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.phone,
                                  color: Color(0xff039c00),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Call",
                                  style: GoogleFonts.getFont(
                                    "Poppins",
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff039c00),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            padding: const EdgeInsets.all(
                              12,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.darkBackgroundColor,
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.video_call,
                                  color: Color(0xffFF9900),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Video",
                                  style: GoogleFonts.getFont(
                                    "Poppins",
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffFF9900),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            padding: const EdgeInsets.all(
                              12,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.darkBackgroundColor,
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.chat,
                                  color: AppColors.darkPrimaryColor,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Chat",
                                  style: GoogleFonts.getFont(
                                    "Poppins",
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.darkPrimaryColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
