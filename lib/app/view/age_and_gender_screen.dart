import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/utils/widgets/age_and_gender_card_widget.dart';
import 'package:ment_o_help/app/utils/widgets/filled_action_button.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';
import 'package:ment_o_help/core/app_routes.dart';

class AgeAndGenderScreen extends StatelessWidget {
  const AgeAndGenderScreen({super.key});

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
                child: Text("LETS PERSONALIZE THIS FOR YOU",
                    style: AppFonts.pageTitles),
              ),
              SizedBox(
                height: 40.spMax,
              ),
              const AgeAndGenderCardWidget(),
              const Spacer(),
              SizedBox(
                width: 312.spMax,
                child: FilledActionButton(
                  labelText: "NEXT STEP",
                  onPressed: () => Get.toNamed(RoutesNames.whatBringsYouScreen),
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
