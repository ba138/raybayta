import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:raybayta/Widgets/primary_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isEdit = false.obs;
    var name = TextEditingController(text: "Basit Ali");
    var email = TextEditingController(text: "BasitAli@gmail.com");
    var phoneNumber = TextEditingController(text: "03554500599");
    var about = TextEditingController(text: "I am Basit Ali");

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Profile",
          style: GoogleFonts.getFont(
            "Poppins",
            textStyle: TextStyle(
              fontSize: 16,
              color: AppColors.darkOnBackgroundColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        // actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.darkContainerColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          CircleAvatar(
                            backgroundColor: AppColors.darkBackgroundColor,
                            radius: 50,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Obx(
                            () => TextField(
                              controller: name,
                              enabled: isEdit.value,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.all(12),
                                filled: isEdit.value,
                                labelText: "Name",
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: AppColors.darkOnBackgroundColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Obx(
                            () => TextField(
                              controller: about,
                              enabled: isEdit.value,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.all(12),
                                filled: isEdit.value,
                                labelText: "About",
                                prefixIcon: Icon(
                                  Icons.info,
                                  color: AppColors.darkOnBackgroundColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Obx(
                            () => TextField(
                              controller: phoneNumber,
                              enabled: isEdit.value,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.all(12),
                                filled: isEdit.value,
                                labelText: "Number",
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: AppColors.darkOnBackgroundColor,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: email,
                            enabled: false,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                              contentPadding: const EdgeInsets.all(12),
                              filled: false,
                              labelText: "Email",
                              prefixIcon: Icon(
                                Icons.person,
                                color: AppColors.darkOnBackgroundColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Obx(
                            () => isEdit.value
                                ? PrimaryButton(
                                    title: "Save",
                                    ontap: () {
                                      isEdit.value = false;
                                    },
                                  )
                                : PrimaryButton(
                                    title: "Edit",
                                    ontap: () {
                                      isEdit.value = true;
                                    },
                                  ),
                          ),
                          const SizedBox(
                            height: 30,
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
