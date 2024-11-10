import 'package:get/get.dart';
import 'package:raybayta/Screens/HomeScreen/home_screen.dart';
import 'package:raybayta/Screens/LoginScreen/login_screen.dart';

var screenPaths = [
  GetPage(
    name: "/loginView",
    page: () => const LoginScreen(),
    transition: Transition.leftToRight,
  ),
  GetPage(
    name: "/homeView",
    page: () => const HomeScreen(),
    transition: Transition.leftToRight,
  ),
];
