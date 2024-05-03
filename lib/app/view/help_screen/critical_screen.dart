import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/view/analyzing_screen/widgets/analyzing_screen_buttons.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_routes.dart';

class CriticalScreen extends StatelessWidget {
  const CriticalScreen({super.key});

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
                        'assets/images/analyzing_images/error.png'),
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
                  'CRITICAL',
                  style: GoogleFonts.inter(
                      color: const Color(0xFFe74c3c),
                      fontSize: 36.sp,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 10.h),
                  child: AutoSizeText(
                    "We're deeply concerned about your mental health. Your assessment indicates a critical state, and it's crucial that you seek immediate help.\n\nIf you're in immediate danger or experiencing thoughts of self-harm, please call emergency services or a suicide prevention hotline right away. Schedule an urgent appointment with a mental health professional or visit the nearest emergency mental health facility.",
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
                    color1: const Color(0xFFf6a086),
                    color2: const Color(0xFFe74c3c),
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
