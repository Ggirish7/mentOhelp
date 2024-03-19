import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class AgeAndGenderCardWidget extends StatelessWidget {
  const AgeAndGenderCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: Col.buttonBackGroundReversed,
          borderRadius: BorderRadius.circular(15.spMax)),
      // height: 394.spMax,
      // width: 355.spMax,
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.spMax,
          ),
          Text(
            "We need to assign this right for you",
            style: AppFonts.ageAndGenderSubHeader,
          ),
          SizedBox(
            height: 14.spMax,
          ),
          Text(
            "What is your gender",
            style: AppFonts.ageAndGenderHeader,
          ),
          SizedBox(
            height: 24.spMax,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const GenderWidget(
                gender: "Male",
              ),
              SizedBox(
                width: 31.spMax,
              ),
              const GenderWidget(
                gender: "Female",
              ),
              SizedBox(
                width: 31.spMax,
              ),
              const GenderWidget(
                gender: "Others",
              ),
            ],
          ),
          SizedBox(
            height: 40.spMax,
          ),
          Text(
            "What is your age",
            style: AppFonts.ageAndGenderHeader,
          ),
        ],
      ),
    );
  }
}

class GenderWidget extends StatelessWidget {
  const GenderWidget({super.key, required this.gender});
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            width: 50.spMax,
            height: 50.spMax,
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
          style: AppFonts.ageAndGenderText,
        ),
      ],
    );
  }
}
