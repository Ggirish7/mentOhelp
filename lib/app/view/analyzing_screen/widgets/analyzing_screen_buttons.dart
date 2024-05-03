import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AnalyzingButton extends StatelessWidget {
  const AnalyzingButton(
      {super.key,
      required this.labelText,
      required this.onPressed,
      required this.color1,
      required this.color2,
      this.textColor});
  final String labelText;
  final void Function()? onPressed;
  final Color? textColor;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [color1, color2],
        ),
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
              fontSize: 20.sp,
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
