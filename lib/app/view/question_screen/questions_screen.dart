import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/utils/globals.dart';
import 'package:ment_o_help/app/utils/widgets/filled_action_button.dart';
import 'package:ment_o_help/app/view/question_screen/controller/question_screen_controller.dart';
import 'package:ment_o_help/app/view/question_screen/widgets/question_widget.dart';
import 'package:ment_o_help/core/app_colors.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});
  static var questionScreenController = Get.put(QuestionScreenController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: Col.appBackGround,
      ),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              const QuestionWidget(),
              SizedBox(
                height: 20.h,
              ),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: FilledActionButton(
                        onPressed: () {
                          questionScreenController.buttonCarouselController
                              .previousPage();
                        },
                        // onPressed: () {
                        //   Get.offNamed(RoutesNames.analyzingScreen);
                        // },
                        labelText: "PREVIOUS",
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    questionScreenController.getQuestionIndex() == 8
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: FilledActionButton(
                              onPressed: () {
                                onTapSubmit();
                              },
                              labelText: "SUBMIT",
                            ),
                          )
                        : SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: FilledActionButton(
                              onPressed: () {
                                questionScreenController
                                    .buttonCarouselController
                                    .nextPage();
                              },
                              labelText: "NEXT",
                            ),
                          ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onTapSubmit() {
    questionScreenController.answerCheckCondition()
        ? questionScreenController.calculateScore()
        : getSnackBar("Please answer all questions");
  }
}
