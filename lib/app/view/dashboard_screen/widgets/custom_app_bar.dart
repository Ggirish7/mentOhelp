import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/view/dashboard_screen/controller/dashboard_screen_controller.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var dashboardcontroller = Get.find<DashBoardController>();
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: EdgeInsets.only(top: 8.0.h, left: 20.w, right: 20.w),
        child: AutoSizeText(
          "Discover your path to mental well-being",
          maxLines: 2,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      toolbarHeight: 90.h,
      actions: [
        GestureDetector(
          onTap: () {
            dashboardcontroller.onTapChange(3);
          },
          child: Padding(
            padding: EdgeInsets.only(top: 8.h, right: 20.w),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 24.r,
            ),
          ),
        )
      ],
    );
  }
}
