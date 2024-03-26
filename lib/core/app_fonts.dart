import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle onBoardingTitle = GoogleFonts.catamaran(
    textStyle: TextStyle(
        fontSize: 36.sp, fontWeight: FontWeight.w900, color: Colors.white),
  );

  static TextStyle carousalMainTextStyle = GoogleFonts.inter(
      color: Colors.white, fontSize: 19.sp, fontWeight: FontWeight.w500);

  static TextStyle carousalSubTextStyle = GoogleFonts.inter(
    color: Colors.white,
    fontSize: 13.sp,
  );

  static TextStyle pageTitles = GoogleFonts.inter(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle pageTitles2 = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    // color: const Color(0xFF2e3235),
    color: Colors.black54,
  );

  static TextStyle questions = GoogleFonts.catamaran(
    textStyle: TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF2e3235),
      textBaseline: TextBaseline.ideographic,
    ),
  );

  static TextStyle answers = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static TextStyle privacyPolicyText = GoogleFonts.inter(
    color: Colors.white,
    fontSize: 10,
  );

  static TextStyle privacyPolicyTextUnderlined = GoogleFonts.inter(
    color: Colors.white,
    fontSize: 10,
    textStyle: const TextStyle(decoration: TextDecoration.underline),
  );

  static TextStyle ageAndGenderSubHeader = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle ageAndGenderHeader = GoogleFonts.inter(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle ageAndGenderDate = GoogleFonts.inter(
    fontSize: 20.sp,
    fontWeight: FontWeight.w300,
    color: Colors.white,
  );

  static TextStyle ageAndGenderText = GoogleFonts.inter(
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static TextStyle coreIssuesMainText = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle coreIssuesOptionsText = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );

  static TextStyle userSelectedSCreenText = GoogleFonts.inter(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  static TextStyle coreIssuesScreenText = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle coreIssuesScreenText2 = GoogleFonts.inter(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    textStyle: const TextStyle(
        decoration: TextDecoration.underline, decorationColor: Colors.white),
  );

  // static const String nunito = 'nunito';

  // static TextStyle nunitoRegular({
  //   double fontSize = 16,
  //   Color color = const Color(0xFF000000),
  //   FontWeight fontWeight = FontWeight.normal,
  // }) {
  //   return TextStyle(
  //     fontFamily: nunito,
  //     fontSize: fontSize,
  //     color: color,
  //     fontWeight: fontWeight,
  //   );
  // }

  // static TextStyle nunitonodec({
  //   double fontSize = 16,
  //   Color color = const Color(0xFF000000),
  //   FontWeight fontWeight = FontWeight.w800,
  // }) {
  //   return TextStyle(
  //     fontFamily: nunito,
  //     fontSize: fontSize,
  //     color: color,
  //     fontWeight: fontWeight,
  //     decoration: TextDecoration.none,
  //   );
  // }

  // static TextStyle nunitoBold(
  //     {double fontSize = 16,
  //     Color color = const Color(0xFF000000),
  //     FontWeight fontWeight = FontWeight.bold}) {
  //   return TextStyle(
  //     fontFamily: nunito,
  //     fontSize: fontSize,
  //     color: color,
  //     fontWeight: fontWeight,
  //   );
  // }
}
