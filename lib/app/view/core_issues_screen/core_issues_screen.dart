import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
                  height: 78.sp,
                ),
                Text("LETS PERSONALIZE THIS FOR YOU",
                    style: AppFonts.pageTitles),
                SizedBox(
                  height: 40.spMax,
                ),
                Text(
                  "What are your core issues?",
                  style: AppFonts.coreIssuesMainText,
                ),
                SizedBox(
                  height: 22.spMax,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.spMax),
                  child: const IssuesWidget(),
                ),
                const Spacer(),
                Text(
                  "Not sure about your concerns?",
                  style: AppFonts.coreIssuesMainText,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.spMax, vertical: 22),
                  child: const ChatBotCardWidget(),
                ),
                const Spacer(),
                SizedBox(
                  width: 312.spMax,
                  child: FilledActionButton(
                    labelText: "NEXT STEP",
                    onPressed: () {
                      onTapNextStep(
                        context,
                        coreIssuesScreenController.nextScreenCondition(),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 22.sp,
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
onTapNextStep(BuildContext context, bool value) {
  value
      ? Get.toNamed(RoutesNames.whatBringsYouScreen)
      : ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 1),
            action: SnackBarAction(
                label: "Dismiss",
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                }),
            content: const Text("Select at least 1 option"),
          ),
        );
}
