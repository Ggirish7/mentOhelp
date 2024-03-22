import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';
import 'package:ment_o_help/core/app_routes.dart';

// TODO: Add animation
// TODO: Change stateful widget to stateless

class OnboardingQuestionScreen extends StatefulWidget {
  const OnboardingQuestionScreen({super.key});

  @override
  State<OnboardingQuestionScreen> createState() =>
      _OnboardingQuestionScreenState();
}

class _OnboardingQuestionScreenState extends State<OnboardingQuestionScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      // Get.toNamed(RoutesNames.questionsScreen);
      Get.offAllNamed(RoutesNames.questionsScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: Col.appBackGround),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Text(
              "LET'S TRY TO GET TO KNOW YOU.",
              style: AppFonts.pageTitles,
            ),
          ),
        ),
      ),
    );
  }
}
