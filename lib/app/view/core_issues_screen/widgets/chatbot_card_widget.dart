import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';
import 'package:ment_o_help/core/app_routes.dart';

class ChatBotCardWidget extends StatelessWidget {
  const ChatBotCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      width: double.maxFinite,
      height: 184.h,
      decoration: BoxDecoration(
        gradient: Col.buttonBackGround,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: AutoSizeText.rich(
                  minFontSize: 0,
                  stepGranularity: 0.1,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Talk to MindMate!",
                        style: AppFonts.userSelectedSCreenText,
                      ),
                      TextSpan(
                        text:
                            "\nMindMate is an AI chatbot who will guide you through your concerns",
                        style: AppFonts.coreIssuesScreenText,
                      )
                    ],
                  ),
                ),
              ),
              Image.asset(
                "assets/images/carousal_images/carousal_image_3.png",
                height: 100.h,
                width: 100.w,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const Spacer(),
          AutoSizeText.rich(
            TextSpan(
                text: "Let's Go",
                style: AppFonts.coreIssuesScreenText2,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    onTapLetsGo();
                  }),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

// Navigate to chatbot Screen
onTapLetsGo() {
  Get.toNamed(RoutesNames.chatBotScreen);
}
