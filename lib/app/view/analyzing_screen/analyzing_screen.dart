import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:ment_o_help/app/view/question_screen/controller/question_screen_controller.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class AnalyzingScreen extends StatefulWidget {
  const AnalyzingScreen({super.key});

  @override
  State<AnalyzingScreen> createState() => _AnalyzingScreenState();
}

class _AnalyzingScreenState extends State<AnalyzingScreen> {
  // var controller = Get.find<QuestionScreenController>();
  late QuestionScreenController controller;
  @override
  void initState() {
    controller = Get.put(QuestionScreenController());
    Timer(const Duration(seconds: 5), () {
      controller.analyszeSituation();
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Animate(
                effects: const [
                  FadeEffect(
                    duration: Duration(seconds: 2),
                  ),
                  SlideEffect(
                    duration: Duration(seconds: 2),
                  )
                ],
                child: LottieBuilder.asset(
                  "assets/animations/analyzing_results_animation.json",
                ),
              ),
              Text(
                "ANALYZING YOUR CONDITION",
                style: AppFonts.pageTitles,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
