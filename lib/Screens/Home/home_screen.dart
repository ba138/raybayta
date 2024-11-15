import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:raybayta/Screens/Home/Widgets/chat_list.dart';
import 'package:raybayta/Screens/Home/Widgets/home_tabbar.dart';
import 'package:raybayta/Screens/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 3,
      vsync: this,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Raybayta",
          style: GoogleFonts.getFont(
            "Poppins",
            textStyle: TextStyle(
              fontSize: 18,
              color: AppColors.darkOnBackgroundColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: AppColors.darkContainerColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed(
                "/proflieView",
              );
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
        leading: const Center(child: Text("logo")),
        bottom: homeTabbar(
          tabController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.darkPrimaryColor,
        child: Icon(
          Icons.add,
          color: AppColors.darkOnBackgroundColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TabBarView(controller: tabController, children: [
          ChatList(),
          ListView(
            children: [
              ListTile(
                title: Text("Name"),
              )
            ],
          ),
          ListView(
            children: [
              ListTile(
                title: Text("Name"),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
