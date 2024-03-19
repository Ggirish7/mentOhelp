import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ment_o_help/app/utils/widgets/question_answer_screen/options.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Options(
          labelText: "Not At All",
          onPressed: null,
        ),
        SizedBox(
          height: 5.spMax,
        ),
        const Options(
          labelText: "Several Days",
          onPressed: null,
        ),
        SizedBox(
          height: 5.spMax,
        ),
        const Options(
          labelText: "More Than Half The Days",
          onPressed: null,
        ),
        SizedBox(
          height: 5.spMax,
        ),
        const Options(
          labelText: "Nearly Everyday",
          onPressed: null,
        ),
      ],
    );
  }
}
