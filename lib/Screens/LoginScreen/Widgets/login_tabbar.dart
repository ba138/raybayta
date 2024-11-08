import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:raybayta/Configs/colors.dart';
import 'package:raybayta/Screens/LoginScreen/Widgets/login_form.dart';
import 'package:raybayta/Screens/LoginScreen/Widgets/signup_form.dart';

class LoginTabbar extends StatelessWidget {
  const LoginTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = false.obs;
    return Container(
      // height: 400,
      decoration: BoxDecoration(
        color: AppColors.darkContainerColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
      ),
      padding: const EdgeInsets.all(
        20,
      ),
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        isLogin.value = true;
                      },
                      child: Column(
                        children: [
                          Text(
                            "Login",
                            style: GoogleFonts.getFont(
                              "Poppins",
                              textStyle: TextStyle(
                                fontSize: isLogin.value ? 14 : 12,
                                color: AppColors.darkOnContainerColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            height: 3,
                            width: isLogin.value ? 100 : 0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.darkPrimaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        isLogin.value = false;
                      },
                      child: Column(
                        children: [
                          Text(
                            "Signup",
                            style: GoogleFonts.getFont(
                              "Poppins",
                              textStyle: TextStyle(
                                fontSize: isLogin.value ? 14 : 12,
                                color: AppColors.darkOnContainerColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            height: 3,
                            width: isLogin.value ? 0 : 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: AppColors.darkPrimaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Obx(
                () => isLogin.value ? const LoginForm() : const SignupForm(),
              )
            ],
          ))
        ],
      ),
    );
  }
}
