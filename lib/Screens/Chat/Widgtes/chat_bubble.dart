import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isComing;
  final String time;
  final String staus;
  final String image;
  const ChatBubble({
    super.key,
    required this.message,
    required this.isComing,
    required this.time,
    required this.staus,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment:
            isComing ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.sizeOf(context).width / 1.3,
              ),
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
              child: image == ""
                  ? Text(
                      message,
                      style: GoogleFonts.getFont(
                        "Poppins",
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: AppColors.darkOnBackgroundColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          image,
                        ),
                        Text(
                          message,
                          style: GoogleFonts.getFont(
                            "Poppins",
                            textStyle: TextStyle(
                              fontSize: 12,
                              color: AppColors.darkOnBackgroundColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        )
                      ],
                    )),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment:
                isComing ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              isComing
                  ? Text(
                      time,
                      style: GoogleFonts.getFont(
                        "Poppins",
                        textStyle: TextStyle(
                          fontSize: 12,
                          color: AppColors.darkOnBackgroundColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  : Row(
                      children: [
                        Text(
                          time,
                          style: GoogleFonts.getFont(
                            "Poppins",
                            textStyle: TextStyle(
                              fontSize: 12,
                              color: AppColors.darkOnBackgroundColor,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.done_all,
                          size: 18,
                          color: AppColors.darkContainerColor,
                        ),
                      ],
                    ),
            ],
          )
        ],
      ),
    );
  }
}
