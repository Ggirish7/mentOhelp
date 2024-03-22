import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/view/what_brings_you_here/controller/what_brings_you_controller.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class OptionPath extends StatelessWidget {
  const OptionPath({super.key, required this.labelText, required this.index});
  final String labelText;
  final int index;

  @override
  Widget build(BuildContext context) {
    var whatBringsYouController = Get.put(WhatBringsYouController());
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        gradient: Col.buttonBackGround,
        borderRadius: BorderRadius.circular(10.spMax),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.spMax),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                whatBringsYouController.setPathIndex(index);
              },
              child: Obx(
                () => Container(
                  height: 36.spMax,
                  width: 43.spMax,
                  decoration: BoxDecoration(
                    color: whatBringsYouController.getPathIndex() == index
                        ? Colors.green[700]
                        : const Color(
                            0xFFD9D9D9,
                          ),
                  ),
                  child: whatBringsYouController.getPathIndex() == index
                      ? Icon(
                          Icons.check,
                          size: 40.spMax,
                          color: Col.whit,
                        )
                      : null,
                ),
              )),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.08,
          ),
          Text(labelText, style: AppFonts.userSelectedSCreenText)
        ],
      ),
    );
  }
}
