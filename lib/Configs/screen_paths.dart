import 'package:get/get.dart';
import 'package:raybayta/Screens/LoginScreen/login_screen.dart';

var screenPaths = [
  GetPage(
    name: "/loginView",
    page: () => const LoginScreen(),
    transition: Transition.leftToRight,
  ),
];
