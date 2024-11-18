import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:raybayta/Widgets/primary_button.dart';

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
        child: SingleChildScrollView(
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
                          const SizedBox(
                            height: 16,
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
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Text(
                                "User Name",
                                style: GoogleFonts.getFont(
                                  "Poppins",
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.darkOnBackgroundColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextField(
                            textInputAction: TextInputAction.next,
                            // controller: emailController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person),
                              hintText: "Basit Ali",
                              isDense: true,
                              contentPadding: const EdgeInsets.all(12),
                              fillColor: AppColors.darkBackgroundColor,
                              filled: true,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
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
                            height: 16,
                          ),
                          Row(
                            children: [
                              Text(
                                "Email",
                                style: GoogleFonts.getFont(
                                  "Poppins",
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.darkOnBackgroundColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextField(
                            textInputAction: TextInputAction.next,

                            // controller: emailController,
                            decoration: InputDecoration(
                              hintText: "basitalyshah@gmai.com",
                              prefixIcon: const Icon(Icons.email),
                              isDense: true,
                              contentPadding: const EdgeInsets.all(12),
                              fillColor: AppColors.darkBackgroundColor,
                              filled: true,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
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
                            height: 16,
                          ),
                          Row(
                            children: [
                              Text(
                                "Phone Number",
                                style: GoogleFonts.getFont(
                                  "Poppins",
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.darkOnBackgroundColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextField(
                            textInputAction: TextInputAction.done,

                            // controller: emailController,
                            decoration: InputDecoration(
                              hintText: "+923554500599",
                              prefixIcon: const Icon(Icons.phone),
                              isDense: true,
                              contentPadding: const EdgeInsets.all(12),
                              fillColor: AppColors.darkBackgroundColor,
                              filled: true,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
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
                          PrimaryButton(title: "Update", ontap: () {}),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
