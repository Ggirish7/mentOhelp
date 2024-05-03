import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/view/analyzing_screen/widgets/analyzing_screen_buttons.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_routes.dart';

class ConcerningScreen extends StatelessWidget {
  const ConcerningScreen({super.key});

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
                    FadeEffect(duration: Duration(seconds: 1)),
                    SlideEffect(
                      duration: Duration(seconds: 1),
                    )
                  ],
                  child: Image(
                    image: const AssetImage(
                        'assets/images/analyzing_images/warning.png'),
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
                  'CONCERNING',
                  style: GoogleFonts.inter(
                      color: const Color(0xFFffeb00),
                      fontSize: 36.sp,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 10.h),
                  child: AutoSizeText(
                    "We've noticed that your mental health indicates some concern. We want you to know that you're not alone, and we're here to support you through this.\n\nIt's essential to take proactive steps to prioritize your well-being. We recommend scheduling an appointment with a qualified healthcare professional who can provide personalized guidance and support.",
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
                    textColor: Colors.black,
                    onPressed: () {
                      Get.offAllNamed(RoutesNames.doctorsListScreen);
                    },
                    color1: const Color(0xFFffe9a5),
                    color2: const Color(0xFFffeb00),
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
