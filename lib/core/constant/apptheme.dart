import 'package:ecommerce/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
      displayLarge: TextStyle(
          //headline1
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: AppColor.black),
      displayMedium: TextStyle(
          //headline2
          fontWeight: FontWeight.bold,
          fontSize: 26,
          color: AppColor.black),
      bodyLarge: TextStyle(
          //bodytext1
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium: TextStyle(
          //bodytext2
          height: 2,
          color: AppColor.grey,
          fontSize: 14)),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      displayLarge: TextStyle(
          //headline1
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: AppColor.black),
      displayMedium: TextStyle(
          //headline2
          fontWeight: FontWeight.bold,
          fontSize: 26,
          color: AppColor.black),
      bodyLarge: TextStyle(
          //bodytext1
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium: TextStyle(
          //bodytext2
          height: 2,
          color: AppColor.grey,
          fontSize: 14)),
  primarySwatch: Colors.blue,
);
