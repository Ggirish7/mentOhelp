import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/utils/widgets/filled_action_button.dart';
import 'package:ment_o_help/app/view/what_brings_you_here/widgets/option_path.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';
import 'package:ment_o_help/core/app_routes.dart';

class WhatBringsYouScreen extends StatelessWidget {
  const WhatBringsYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: Col.appBackGround),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 78.sp,
              ),
              Center(
                child: Text("WHAT BRINGS YOU TO MENT-O-HELP?",
                    style: AppFonts.pageTitles),
              ),
              SizedBox(
                height: 45.spMax,
              ),
              const OptionPath(
                labelText: "I want to take a Therapy",
                index: 1,
              ),
              SizedBox(
                height: 45.spMax,
              ),
              const OptionPath(
                labelText: "I want to build Mental\nStrength,Take a test?",
                index: 2,
              ),
              SizedBox(
                height: 45.spMax,
              ),
              const OptionPath(
                labelText: "Not Sure?, Talk to\nMindmate",
                index: 3,
              ),
              const Spacer(),
              SizedBox(
                width: 312.spMax,
                child: FilledActionButton(
                  labelText: "NEXT STEP",
                  onPressed: () =>
                      Get.toNamed(RoutesNames.onboardingquestionsScreen),
                ),
              ),
              SizedBox(
                height: 22.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
