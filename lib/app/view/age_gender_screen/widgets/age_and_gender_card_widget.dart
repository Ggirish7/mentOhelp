import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/view/age_gender_screen/controller/age_gender_controller.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class AgeAndGenderCardWidget extends StatelessWidget {
  const AgeAndGenderCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var ageGenderController = Get.put(AgeGenderController());
    return Container(
      decoration: BoxDecoration(
        gradient: Col.buttonBackGroundReversed,
        borderRadius: BorderRadius.circular(15.spMax),
      ),
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
                index: 1,
              ),
              SizedBox(
                width: 31.spMax,
              ),
              const GenderWidget(
                gender: "Female",
                index: 2,
              ),
              SizedBox(
                width: 31.spMax,
              ),
              const GenderWidget(
                gender: "Others",
                index: 3,
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
          SizedBox(
            height: 30.spMax,
          ),
          GestureDetector(
            onTap: () {
              ageGenderController.setAge(context);
            },
            child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0x2FD9D9D9),
                ),
                child: Obx(
                  () => Center(
                    child: Text(
                      ageGenderController.getAge() == DateTime(2006)
                          ? "DD/MM/YYYY"
                          : ageGenderController.getFormattedAge(),
                      style: AppFonts.ageAndGenderDate,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class GenderWidget extends StatelessWidget {
  const GenderWidget({super.key, required this.gender, required this.index});
  final String gender;
  final int index;

  @override
  Widget build(BuildContext context) {
    var ageGenderController = Get.put(AgeGenderController());
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            ageGenderController.changeGenderIndex(index);
          },
          child: Obx(
            () => Container(
              width: 50.spMax,
              height: 50.spMax,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ageGenderController.getGenderIndex() == index
                    ? Colors.green[700]
                    : Col.ageGenderIconsPink,
              ),
              child: ageGenderController.getGenderIndex() == index
                  ? Icon(
                      Icons.check,
                      size: 40.spMax,
                      color: Col.whit,
                    )
                  : null,
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
