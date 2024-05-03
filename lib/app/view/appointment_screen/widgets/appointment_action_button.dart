import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/core/app_colors.dart';

class FilledActionButton3 extends StatelessWidget {
  const FilledActionButton3(
      {super.key,
      required this.labelText,
      required this.onPressed,
      required this.filled,
      required this.bigButton});
  final String labelText;
  final void Function()? onPressed;
  final bool filled;
  final bool bigButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: bigButton
          ? MediaQuery.of(context).size.width * 0.4
          : MediaQuery.of(context).size.width * 0.37,
      decoration: filled
          ? BoxDecoration(
              gradient: Col.buttonBackGround,
              borderRadius: BorderRadius.circular(10.r),
            )
          : BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10.r),
            ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
          side: const BorderSide(
            width: 1.34,
            color: Colors.transparent,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        child: Text(
          labelText,
          style: GoogleFonts.inter(
              fontSize: 16.sp,
              color: filled ? Colors.white : Colors.black,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
