import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ment_o_help/app/utils/widgets/filled_action_button.dart';
import 'package:ment_o_help/app/utils/widgets/question_answer_screen/question_widget.dart';
import 'package:ment_o_help/core/app_colors.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

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
                height: 40.spMax,
              ),
              const QuestionWidget(),
              SizedBox(
                height: 20.spMax,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: const FilledActionButton(
                  onPressed: null,
                  labelText: "NEXT",
                ),
              ),

              // FOR IMPLEMENTING NEXT AND PREVIOUS BUTTONS USING TERNARY OR IF-ELSE STATEMETS

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     SizedBox(
              //       width: MediaQuery.of(context).size.width * 0.4,
              //       child: const FilledActionButton(
              //         onPressed: null,
              //         labelText: "PREVIOUS",
              //       ),
              //     ),
              //     SizedBox(
              //       width: MediaQuery.of(context).size.width * 0.4,
              //       child: const FilledActionButton(
              //         onPressed: null,
              //         labelText: "NEXT",
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
