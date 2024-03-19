import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class QuestionAnswer extends StatelessWidget {
  const QuestionAnswer({super.key, required this.gender});
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            width: 40.spMax,
            height: 40.spMax,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Col.ageGenderIconsPink,
            ),
          ),
        ),
        SizedBox(
          height: 14.spMax,
        ),
        Text(
          gender,
          style: AppFonts.answers,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
