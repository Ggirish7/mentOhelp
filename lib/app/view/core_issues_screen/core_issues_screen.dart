import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/utils/globals.dart';
import 'package:ment_o_help/app/utils/widgets/filled_action_button.dart';
import 'package:ment_o_help/app/view/core_issues_screen/controller/core_issues_screen_controller.dart';
import 'package:ment_o_help/app/view/core_issues_screen/widgets/chatbot_card_widget.dart';
import 'package:ment_o_help/app/view/core_issues_screen/widgets/issues_widget.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';
import 'package:ment_o_help/core/app_routes.dart';

class CoreIssuesScreen extends StatelessWidget {
  const CoreIssuesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var coreIssuesScreenController = Get.put(CoreIssuesScreenController());
    return Container(
      decoration: BoxDecoration(gradient: Col.appBackGround),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 78.h,
                ),
                Text("LETS PERSONALIZE THIS FOR YOU",
                    style: AppFonts.pageTitles),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "What are your core issues?",
                  style: AppFonts.coreIssuesMainText,
                ),
                SizedBox(
                  height: 22.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: const IssuesWidget(),
                ),
                const Spacer(),
                Text(
                  "Not sure about your concerns?",
                  style: AppFonts.coreIssuesMainText,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 22.h),
                  child: const ChatBotCardWidget(),
                ),
                const Spacer(),
                SizedBox(
                  width: 312.w,
                  child: FilledActionButton(
                    labelText: "NEXT STEP",
                    onPressed: () {
                      onTapNextStep(
                        coreIssuesScreenController.nextScreenCondition(),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Navigates to chatbot screen
onTapNextStep(bool value) {
  value
      ? Get.toNamed(RoutesNames.whatBringsYouScreen)
      : getSnackBar("Select at least 1 option");
}
