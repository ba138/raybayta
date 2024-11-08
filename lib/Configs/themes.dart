import 'package:flutter/material.dart';
import 'package:raybayta/Configs/colors.dart';

var lightTheme = ThemeData();
var darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkBackgroundColor,
      border: InputBorder.none,
    ),
    colorScheme: ColorScheme.dark(
      primary: AppColors.darkPrimaryColor,
      onPrimary: AppColors.darkOnBackgroundColor,
      background: AppColors.darkOnBackgroundColor,
      primaryContainer: AppColors.darkContainerColor,
      onPrimaryContainer: AppColors.darkOnContainerColor,
    ));
