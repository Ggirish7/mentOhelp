import 'package:get/get.dart';
import 'package:ment_o_help/app/utils/widgets/question_answer_screen/question_widget2.dart';
import 'package:ment_o_help/app/view/age_and_gender_screen.dart';
import 'package:ment_o_help/app/view/create_account_screen/create_account_screen.dart';
import 'package:ment_o_help/app/view/final_screen.dart';
import 'package:ment_o_help/app/view/login_screen/login_screen.dart';
import 'package:ment_o_help/app/view/question_screen/onboarding_question_screen.dart';
import 'package:ment_o_help/app/view/question_screen/questions_screen.dart';
import 'package:ment_o_help/app/view/signup_screen.dart';
import 'package:ment_o_help/app/view/what_brings_you_screen.dart';
import 'package:ment_o_help/core/app_routes.dart';
import 'package:ment_o_help/app/view/onboarding_screen.dart';

class Routes {
  static final List<GetPage<dynamic>> routes = [
    // GetPage(
    //   name: RoutesNames.splashScreen,
    //   page: () => const SplashScreen(),
    // ),
    GetPage(
      name: RoutesNames.onBoarding,
      page: () => const OnBoardingScreen(),
    ),
    GetPage(
      name: RoutesNames.signup,
      page: () => const SignUpScreen(),
    ),
    GetPage(
      name: RoutesNames.createAccount,
      page: () => const CreateAccountScreen(),
    ),
    GetPage(
      name: RoutesNames.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: RoutesNames.finalScreen,
      page: () => const FinalScreen(),
    ),
    GetPage(
      name: RoutesNames.ageAndGender,
      page: () => const AgeAndGenderScreen(),
    ),
    GetPage(
      name: RoutesNames.questionsScreen,
      page: () => const QuestionsScreen(),
    ),
    GetPage(
      name: RoutesNames.onboardingquestionsScreen,
      page: () => const OnboardingQuestionScreen(),
    ),
    GetPage(
      name: RoutesNames.whatBringsYouScreen,
      page: () => const WhatBringsYouScreen(),
    ),
    GetPage(
      name: RoutesNames.testWidget,
      page: () => const QuestionWidget2(),
    )
  ];
}
