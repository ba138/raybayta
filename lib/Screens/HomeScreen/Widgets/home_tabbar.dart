import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';

homeTabbar(TabController tabController) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(
      56,
    ),
    child: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 4,
        unselectedLabelStyle: GoogleFonts.getFont(
          "Poppins",
          textStyle: TextStyle(
            fontSize: 14,
            color: AppColors.darkOnBackgroundColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        labelStyle: GoogleFonts.getFont(
          "Poppins",
          textStyle: TextStyle(
            fontSize: 15,
            color: AppColors.darkPrimaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        controller: tabController,
        tabs: const [
          Text("Chat"),
          Text("Groups"),
          Text("Calls"),
        ]),
  );
}
