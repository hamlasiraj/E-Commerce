import 'package:flutter/material.dart';
import 'colors.dart';

ThemeData englishTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: "Roboto",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 25, color: AppColor.black),
    headlineMedium: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
    headlineSmall: TextStyle(
        fontWeight: FontWeight.w500, fontSize: 15, color: AppColor.black),
    bodyLarge: TextStyle(
        color: AppColor.black, fontWeight: FontWeight.bold, fontSize: 16),
    bodyMedium: TextStyle(
        color: AppColor.smallText, fontWeight: FontWeight.bold, fontSize: 15),
    bodySmall: TextStyle(
        color: AppColor.smallText, fontWeight: FontWeight.w500, fontSize: 15),
  ),
);

ThemeData arabicTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: "Cairo",
  textTheme: TextTheme(
    headlineLarge: const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 25, color: AppColor.black),
    headlineMedium: const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
    bodyLarge: TextStyle(
        height: 2,
        color: AppColor.smallText,
        fontWeight: FontWeight.bold,
        fontSize: 17),
  ),
);
