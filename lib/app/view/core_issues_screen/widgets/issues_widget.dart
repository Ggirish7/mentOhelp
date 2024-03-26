import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/view/core_issues_screen/controller/core_issues_screen_controller.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class IssuesWidget extends StatelessWidget {
  const IssuesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var coreIssuesScreenController = Get.find<CoreIssuesScreenController>();
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 8.spMax,
      spacing: 8.spMax,
      children: [
        Obx(
          () => coreIssues(
            text: "Anxiety & Mood",
            onPressed: () {
              coreIssuesScreenController.updateAnxietyMood();
            },
            value: coreIssuesScreenController.anxietyMood.value,
          ),
        ),
        Obx(
          () => coreIssues(
            text: "Grief",
            onPressed: () {
              coreIssuesScreenController.updateGreif();
            },
            value: coreIssuesScreenController.greif.value,
          ),
        ),
        Obx(
          () => coreIssues(
            text: "Lifestyle",
            onPressed: () {
              coreIssuesScreenController.updateLifestyle();
            },
            value: coreIssuesScreenController.lifestyle.value,
          ),
        ),
        Obx(
          () => coreIssues(
            text: "Self Growth",
            onPressed: () {
              coreIssuesScreenController.updateSelfGrowth();
            },
            value: coreIssuesScreenController.selfGrowth.value,
          ),
        ),
        Obx(
          () => coreIssues(
            text: "Relationhips",
            onPressed: () {
              coreIssuesScreenController.updateRelationships();
            },
            value: coreIssuesScreenController.relationships.value,
          ),
        ),
        Obx(
          () => coreIssues(
            text: "Trauma & Mood",
            onPressed: () {
              coreIssuesScreenController.updateTraumaMood();
            },
            value: coreIssuesScreenController.traumaMood.value,
          ),
        ),
        Obx(
          () => coreIssues(
            text: "Sexual & Gender Identity",
            onPressed: () {
              coreIssuesScreenController.updateSexualGender();
            },
            value: coreIssuesScreenController.sexualGender.value,
          ),
        ),
        Obx(
          () => coreIssues(
            text: "Work Life Stress",
            onPressed: () {
              coreIssuesScreenController.updateWorklifeStress();
            },
            value: coreIssuesScreenController.worklifeStress.value,
          ),
        ),
      ],
    );
  }
}

Widget coreIssues({
  required String text,
  void Function()? onPressed,
  required bool value,
}) {
  return OutlinedButton(
    onPressed: onPressed,
    style: OutlinedButton.styleFrom(
      backgroundColor: value ? Colors.green[500] : const Color(0xffD9D9D9),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    child: Text(
      text,
      style: AppFonts.coreIssuesOptionsText,
    ),
  );
}
