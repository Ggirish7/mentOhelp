import 'package:flutter/material.dart';

class Col {
  static LinearGradient onBoradingAppBackGround = const LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF110122), Color(0xFF43034A)],
    // colors: Get.isDarkMode
    //     ? const [Color(0xFF110122), Color(0xFF43034A)]
    //     : const [Color(0xFFEA4080), Color(0xFFEE805F)],
  );

  static LinearGradient appBackGround = const LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xFF110122), Color(0xFF43034A)],
    // colors: Get.isDarkMode
    //     ? const [Color(0xFF110122), Color(0xFF43034A)]
    //     : const [Colors.white, Colors.white],
  );

  static LinearGradient buttonBackGround = const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Color(0xFFEA4080), Color(0xFFEE805F)]
      // colors: Get.isDarkMode
      //     ? const [Color(0xFF110122), Color(0xFF43034A)]
      //     : const [Color(0xFFEA4080), Color(0xFFEE805F)],
      );
  static LinearGradient selected = const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.green, Color.fromARGB(255, 29, 100, 33)]
      // colors: Get.isDarkMode
      //     ? const [Color(0xFF110122), Color(0xFF43034A)]
      //     : const [Color(0xFFEA4080), Color(0xFFEE805F)],
      );

  static LinearGradient buttonBackGroundReversed = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xFFEA4080), Color(0xFFEE805F)]
      // colors: Get.isDarkMode
      //     ? const [Color(0xFF110122), Color(0xFF43034A)]
      //     : const [Color(0xFFEA4080), Color(0xFFEE805F)],
      );

  static Color sky = const Color(0xFFA4CDF6);
  static Color lightblue = const Color(0xFF5B9EE1);
  static Color grey = const Color(0xFF707B81);
  static Color whit = const Color(0xFFF8F9FA);
  static Color cirwhit = const Color(0xFFFFFFFF);
  static Color fadeblack = const Color(0xFF1A2530);
  static Color actionButtonBlue = const Color(0xFF5B9EE1);
  static Color actionButtonWhite = const Color(0xFFFFFFFF);
  static Color ageGenderIconsPink = const Color(0XFFF78490);
}
