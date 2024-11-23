import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:raybayta/Controllers/image_picker_controller.dart';
import 'package:raybayta/Controllers/profile_Controller.dart';
import 'package:raybayta/Widgets/primary_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isEdit = false.obs;
    ProfileController profileController = Get.put(ProfileController());
    ImagePickerController imagePickerController = Get.put(
      ImagePickerController(),
    );
    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phoneNumber = TextEditingController();
    TextEditingController about = TextEditingController();

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
      ),
      body: Obx(() {
        if (profileController.currentUser.value.name == null) {
          return const Center(child: CircularProgressIndicator());
        }

        name.text = profileController.currentUser.value.name ?? '';
        email.text = profileController.currentUser.value.email ?? '';
        phoneNumber.text =
            profileController.currentUser.value.phoneNumber ?? '';
        about.text = profileController.currentUser.value.about ?? '';

        return Padding(
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
                            const SizedBox(height: 20),
                            Obx(() => CircleAvatar(
                                  backgroundColor:
                                      AppColors.darkBackgroundColor,
                                  // backgroundImage: FileImage(pickedImage),
                                  radius: 50,
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: isEdit.value
                                        ? IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.image),
                                          )
                                        : null,
                                  ),
                                )),
                            const SizedBox(height: 20),
                            TextField(
                              controller: name,
                              enabled: isEdit.value,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
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
                            const SizedBox(height: 10),
                            TextField(
                              controller: about,
                              enabled: isEdit.value,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
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
                            const SizedBox(height: 10),
                            TextField(
                              controller: phoneNumber,
                              enabled: isEdit.value,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
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
                            const SizedBox(height: 10),
                            TextField(
                              controller: email,
                              enabled: false,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                contentPadding: const EdgeInsets.all(12),
                                filled: false,
                                labelText: "Email",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: AppColors.darkOnBackgroundColor,
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Obx(() => isEdit.value
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
                                  )),
                            const SizedBox(height: 30),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
