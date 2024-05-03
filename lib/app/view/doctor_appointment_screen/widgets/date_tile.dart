import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/core/app_colors.dart';

class DateTileWidget extends StatelessWidget {
  const DateTileWidget({
    super.key,
    required this.day,
    required this.date,
    required this.selected,
  });

  final String day;
  final String date;
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
              gradient: Col.buttonBackGround),
      child: Column(
        children: [
          AutoSizeText(
            day,
            style: GoogleFonts.inter(
                color: Colors.grey[200], fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 2.h,
          ),
          AutoSizeText(
            date,
            style: GoogleFonts.inter(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
