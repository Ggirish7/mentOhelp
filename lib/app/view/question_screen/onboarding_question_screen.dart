import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/view/question_screen/questions_screen.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';

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
      Get.offAll(() => const QuestionsScreen(),
          transition: Transition.downToUp,
          duration: const Duration(seconds: 1));
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
            child: Animate(
              effects: const [
                FadeEffect(duration: Duration(seconds: 1)),
                SlideEffect(
                  duration: Duration(seconds: 1),
                )
              ],
              child: Text(
                "LET'S TRY TO GET TO KNOW YOU.",
                style: AppFonts.pageTitles,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
