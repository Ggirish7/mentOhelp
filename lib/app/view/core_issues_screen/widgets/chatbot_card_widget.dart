import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class ChatBotCardWidget extends StatelessWidget {
  const ChatBotCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      width: double.maxFinite,
      height: 184.spMax,
      decoration: BoxDecoration(
        gradient: Col.buttonBackGround,
        borderRadius: BorderRadius.circular(10.sp),
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
                height: 100.spMax,
                width: 100.spMax,
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
  null;
}
