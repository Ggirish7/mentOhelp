import 'package:get/get.dart';
import 'package:ment_o_help/app/view/age_gender_screen/age_and_gender_screen.dart';
import 'package:ment_o_help/app/view/analyzing_screen/analyzing_screen.dart';
import 'package:ment_o_help/app/view/appointment_screen/appointment_screen.dart';
import 'package:ment_o_help/app/view/chat_bot_screen/chat_bot_screen.dart';
import 'package:ment_o_help/app/view/core_issues_screen/core_issues_screen.dart';
import 'package:ment_o_help/app/view/create_account_screen/create_account_screen.dart';
import 'package:ment_o_help/app/view/dashboard_screen/dashboard_screen.dart';
import 'package:ment_o_help/app/view/doctors_list/doctors_list.dart';
import 'package:ment_o_help/app/view/help_screen/concerning_screen.dart';
import 'package:ment_o_help/app/view/help_screen/critical_screen.dart';
import 'package:ment_o_help/app/view/help_screen/self_help_sccreen.dart';
import 'package:ment_o_help/app/view/login_screen/login_screen.dart';
import 'package:ment_o_help/app/view/login_test_screen.dart';
import 'package:ment_o_help/app/view/onboarding_screen/onboarding_screen.dart';
import 'package:ment_o_help/app/view/profile_screen/profile_screen.dart';
import 'package:ment_o_help/app/view/question_screen/onboarding_question_screen.dart';
import 'package:ment_o_help/app/view/question_screen/questions_screen.dart';
import 'package:ment_o_help/app/view/signup_screen/signup_screen.dart';
import 'package:ment_o_help/app/view/what_brings_you_here/what_brings_you_screen.dart';
import 'package:ment_o_help/core/app_routes.dart';

class Routes {
  static final List<GetPage<dynamic>> routes = [
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
      page: () => const LoginTestScreen(),
    ),
    GetPage(
      name: RoutesNames.ageAndGender,
      page: () => const AgeAndGenderScreen(),
    ),
    GetPage(
      name: RoutesNames.whatBringsYouScreen,
      page: () => const WhatBringsYouScreen(),
    ),
    GetPage(
      name: RoutesNames.coreIssuesScreen,
      page: () => const CoreIssuesScreen(),
    ),
    GetPage(
      name: RoutesNames.onboardingquestionsScreen,
      page: () => const OnboardingQuestionScreen(),
    ),
    GetPage(
      name: RoutesNames.questionsScreen,
      page: () => const QuestionsScreen(),
    ),
    GetPage(
      name: RoutesNames.analyzingScreen,
      page: () => const AnalyzingScreen(),
    ),
    GetPage(
      name: RoutesNames.selfHelpScreen,
      page: () => const SelfHelpScreen(),
    ),
    GetPage(
      name: RoutesNames.concerningScreen,
      page: () => const ConcerningScreen(),
    ),
    GetPage(
      name: RoutesNames.criticalScreen,
      page: () => const CriticalScreen(),
    ),
    GetPage(
      name: RoutesNames.doctorsListScreen,
      page: () => const DoctorsListScreen(),
    ),
    GetPage(
      name: RoutesNames.appointmentScreen,
      page: () => const AppointmentScreen(),
    ),
    // GetPage(
    //   name: RoutesNames.doctorAppointmentScreen,
    //   page: () => const DoctorAppointmentScreen(),
    // ),
    GetPage(
      name: RoutesNames.chatBotScreen,
      page: () => const ChatBotScreen(),
    ),
    GetPage(
      name: RoutesNames.dashBoardScreen,
      page: () => const DashBoardScreen(),
    ),
    GetPage(
      name: RoutesNames.profileScreen,
      page: () => const ProfileScreen(),
    ),
  ];
}
