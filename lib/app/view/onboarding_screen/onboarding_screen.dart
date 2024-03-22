import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/utils/widgets/hollow_button.dart';
import 'package:ment_o_help/app/view/onboarding_screen/widgets/intro_carousal.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';
import 'package:ment_o_help/core/app_images.dart';
import 'package:ment_o_help/core/app_routes.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: Col.onBoradingAppBackGround,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 95.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: const AssetImage(AppImage.mainLogo),
                      width: 70.sp,
                      height: 70.sp,
                    ),
                    Text("ment-o-help", style: AppFonts.onBoardingTitle)
                  ],
                ),
                const Spacer(),
                SizedBox(
                  height: 350.sp,
                  width: double.maxFinite,
                  child: const CarouselWidget(),
                ),
                SizedBox(
                  height: 50.sp,
                ),
                HollowButton(
                  labelText: "GET STARTED",
                  onPressed: () {
                    onTapGetStarted();
                  },
                ),
                SizedBox(
                  height: 20.23.sp,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? ",
                        style: GoogleFonts.inter(),
                      ),
                      TextSpan(
                        text: "Log In",
                        style: GoogleFonts.inter(
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
                SizedBox(
                  height: 50.sp,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Navigates to the SignUp Screen
  onTapGetStarted() {
    Get.toNamed(RoutesNames.signup);
  }

  // Navigates to the Login Screen
  onTapLogin() {
    Get.toNamed(RoutesNames.login);
  }
}
