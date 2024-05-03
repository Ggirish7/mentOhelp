import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/controllers/firebase_authentication_handler.dart';
import 'package:ment_o_help/app/utils/widgets/filled_action_button.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';
import 'package:ment_o_help/core/app_routes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: Col.appBackGround,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 59.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 97.h,
                ),
                Text(
                  "CREATE YOUR ACCOUNT",
                  style: AppFonts.pageTitles,
                ),
                SizedBox(
                  height: 52.h,
                ),
                FilledActionButton(
                  labelText: "SIGN UP WITH EMAIL",
                  onPressed: () {
                    onTapSignUpWithEmail();
                  },
                ),
                SizedBox(
                  height: 26.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                        endIndent: 3,
                      ),
                    ),
                    Text(
                      "OR",
                      style: AppFonts.pageTitles,
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,
                        indent: 3,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 26.h,
                ),
                FilledActionButton(
                  labelText: "CONTINUE WITH GOOGLE",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                    FireManager.signupWithGoogle();
                  },
                ),
                SizedBox(
                  height: 39.h,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? ",
                        style: GoogleFonts.inter(color: Colors.white),
                      ),
                      TextSpan(
                        text: "Log In",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          textStyle: const TextStyle(
                              decoration: TextDecoration.underline),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            onTapLogin();
                          },
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "By tapping Create Account or Sign In, you agree to our ",
                        style: AppFonts.privacyPolicyText,
                      ),
                      TextSpan(
                        text: "Terms",
                        style: AppFonts.privacyPolicyTextUnderlined,
                      ),
                      TextSpan(
                          text: ". Learn how we process your data in our ",
                          style: AppFonts.privacyPolicyText),
                      TextSpan(
                          text: "Privacy Policy",
                          style: AppFonts.privacyPolicyTextUnderlined),
                      TextSpan(
                          text: " and ", style: AppFonts.privacyPolicyText),
                      TextSpan(
                        text: "Cookies Policy.",
                        style: AppFonts.privacyPolicyTextUnderlined,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Navigates to the Create Account Screen
  onTapSignUpWithEmail() {
    Get.toNamed(RoutesNames.createAccount);
  }

  // Navigates to the Login Screen
  onTapLogin() {
    Get.toNamed(RoutesNames.login);
  }

  // On tap singin with google
  onTapSignUpWithGoogle() {
    FireManager.signupWithGoogle();
    Get.offNamed(RoutesNames.finalScreen);
  }
}
