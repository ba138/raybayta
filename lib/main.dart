import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:raybayta/Configs/screen_paths.dart';
import 'package:raybayta/Configs/themes.dart';
import 'package:raybayta/Screens/Home/home_screen.dart';
import 'package:raybayta/Screens/SplashScreen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var auth = FirebaseAuth.instance;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Raybayta',
      getPages: screenPaths,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home:
          auth.currentUser != null ? const HomeScreen() : const SplashScreen(),
    );
  }
}
