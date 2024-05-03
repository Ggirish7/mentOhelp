import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/core/app_colors.dart';

class FilledActionButton extends StatelessWidget {
  const FilledActionButton(
      {super.key, required this.labelText, required this.onPressed});
  final String labelText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: Col.buttonBackGround,
        borderRadius: BorderRadius.circular(67.r),
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          fixedSize: Size(double.maxFinite, 50.h),
          side: const BorderSide(
            width: 1.34,
            color: Colors.transparent,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(67.r),
          ),
        ),
        child: Text(
          labelText,
          style: GoogleFonts.inter(
              fontSize: 16.sp,
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
