import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/view/question_screen/controller/question_screen_controller.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var questionScreenController = Get.find<QuestionScreenController>();
    return Column(
      children: [
        Options(
          labelText: "Not At All",
          optionIndex: 1,
          onPressed: () {
            questionScreenController.setAnswerAtIndex(
                questionScreenController.getQuestionIndex(), 1);
          },
        ),
        SizedBox(
          height: 5.h,
        ),
        Options(
          labelText: "Several Days",
          optionIndex: 2,
          onPressed: () {
            questionScreenController.setAnswerAtIndex(
                questionScreenController.getQuestionIndex(), 2);
          },
        ),
        SizedBox(
          height: 5.h,
        ),
        Options(
          labelText: "More Than Half The Days",
          optionIndex: 3,
          onPressed: () {
            questionScreenController.setAnswerAtIndex(
                questionScreenController.getQuestionIndex(), 3);
          },
        ),
        SizedBox(
          height: 5.h,
        ),
        Options(
          labelText: "Nearly Everyday",
          optionIndex: 4,
          onPressed: () {
            questionScreenController.setAnswerAtIndex(
                questionScreenController.getQuestionIndex(), 4);
          },
        ),
      ],
    );
  }
}

class Options extends StatelessWidget {
  const Options(
      {super.key,
      required this.labelText,
      this.onPressed,
      required this.optionIndex});
  final String labelText;
  final Function()? onPressed;
  final int optionIndex;

  @override
  Widget build(BuildContext context) {
    var questionScreenController = Get.find<QuestionScreenController>();
    return Obx(
      () => OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          fixedSize: Size(250.w, 40.h),
          side: const BorderSide(
            width: 1.34,
            color: Colors.black54,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(67.r),
          ),
          backgroundColor: questionScreenController.getAnswerAtIndex(
                      questionScreenController.getQuestionIndex()) ==
                  optionIndex
              ? Colors.green[600]
              : null,
        ),
        child: Text(
          labelText,
          style: GoogleFonts.inter(fontSize: 16.sp, color: Colors.black),
        ),
      ),
    );
  }
}
