import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/core/app_colors.dart';

class TimeTileWidget extends StatelessWidget {
  const TimeTileWidget({
    super.key,
    required this.time,
    required this.selected,
  });
  final String time;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      decoration: selected
          ? BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              gradient: Col.selected,
            )
          : BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              gradient: Col.buttonBackGround,
            ),
      child: AutoSizeText(
        time,
        style: GoogleFonts.inter(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15.sp,
        ),
      ),
    );
  }
}
