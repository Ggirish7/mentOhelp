import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/utils/widgets/question_answer_screen/answer_widget.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class QuestionWidget2 extends StatelessWidget {
  const QuestionWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.78,
            width: MediaQuery.of(context).size.width * 0.9,
            padding:
                EdgeInsets.symmetric(horizontal: 20.spMax, vertical: 30.spMax),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(25.spMax),
            ),
            child: Column(
              children: [
                Text(
                  "Over the last 2 weeks, how often have you been bothered by any of the following problems?",
                  style: AppFonts.pageTitles2,
                ),
                SizedBox(
                  height: 20.spMax,
                ),
                Text(
                  Questions().questionText[7],
                  style: GoogleFonts.catamaran(
                    textStyle: TextStyle(
                      fontSize: 22.spMax,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const Spacer(),
                const AnswerWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Questions {
  final List<String> questionText = [
    "Little interest or pleasure in doing things",
    "Feeling down, depressed, or hopeless",
    "Trouble falling or staying asleep, or sleeping too much",
    "Feeling tired or having little energy",
    "Poor appetite or overeating",
    "Feeling bad about yourself or that you are a failure or have let yourself or your family down",
    "Trouble concentrating on things, such as reading the newspaper or watching television",
    "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual",
    "Thoughts that you would be better off dead, or of hurting yourself in some way"
  ];
}
