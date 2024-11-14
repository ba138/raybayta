import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:raybayta/Controllers/auth_controller.dart';
import 'package:raybayta/Widgets/primary_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    AuthController authController = Get.put(AuthController());
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(12),
            fillColor: AppColors.darkBackgroundColor,
            prefixIcon: const Icon(Icons.alternate_email_outlined),
            filled: true,
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            hintText: 'Email',
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
          height: 24,
        ),
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(12),
            fillColor: AppColors.darkBackgroundColor,
            prefixIcon: const Icon(
              Icons.password_outlined,
            ),
            filled: true,
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            hintText: 'Password',
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
          height: 40,
        ),
        Obx(
          () => authController.isLoading.value == true
              ? const CircularProgressIndicator()
              : PrimaryButton(
                  title: "LOGIN",
                  ontap: () {
                    authController.login(
                      emailController.text,
                      passwordController.text,
                    );
                  },
                ),
        ),
      ],
    );
  }
}
