import 'package:get/get.dart';
import 'package:raybayta/Screens/Chat/chat_screen.dart';
import 'package:raybayta/Screens/Home/home_screen.dart';
import 'package:raybayta/Screens/Auth/login_screen.dart';
import 'package:raybayta/Screens/SplashScreen/spleash.dart';
import 'package:raybayta/Screens/profile/profile_screen.dart';

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
  GetPage(
    name: "/chatView",
    page: () => const ChatScreen(),
    transition: Transition.leftToRight,
  ),
  // GetPage(
  //   name: "/spleash",
  //   page: () => const Spleash(),
  //   transition: Transition.leftToRight,
  // ),
  GetPage(
    name: "/proflieView",
    page: () => const ProfileScreen(),
    transition: Transition.leftToRight,
  ),
];
