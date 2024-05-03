import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/view/analyzing_screen/widgets/analyzing_screen_buttons.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_routes.dart';

class SelfHelpScreen extends StatelessWidget {
  const SelfHelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: Col.appBackGround),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                Animate(
                  effects: const [
                    FadeEffect(duration: Duration(seconds: 2)),
                    SlideEffect(
                      duration: Duration(seconds: 2),
                    )
                  ],
                  child: Image(
                    image: const AssetImage(
                        'assets/images/analyzing_images/info.png'),
                    height: 250.h,
                    width: 250.w,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Image(
                  image: const AssetImage(
                    'assets/images/analyzing_images/shadow2.png',
                  ),
                  color: Colors.black87,
                  width: 200.w,
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  'NORMAL',
                  style: GoogleFonts.inter(
                      color: const Color(0xFF67b1eb),
                      fontSize: 36.sp,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 10.h),
                  child: AutoSizeText(
                    "Great news! Based on your responses, it seems like your mental health is in a normal state. It's important to continue practicing self-care and managing stress to maintain your well-being.\n\nIf you ever feel like you need someone to talk to, our chatbot is here to help",
                    style: GoogleFonts.inter(
                        color: Colors.grey[350],
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.w, vertical: 22.h),
                  child: AnalyzingButton(
                    labelText: 'NEXT',
                    onPressed: () {
                      Get.offAllNamed(RoutesNames.dashBoardScreen);
                    },
                    color1: const Color(0xFF67b1eb),
                    color2: const Color(0xFF057bd3),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
