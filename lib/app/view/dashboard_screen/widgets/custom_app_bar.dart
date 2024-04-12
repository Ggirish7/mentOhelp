import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: EdgeInsets.only(top: 8.0.sp, left: 20.sp, right: 20.sp),
        child: AutoSizeText(
          "Discover your path to mental well-being",
          maxLines: 2,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      toolbarHeight: 90.sp,
      actions: [
        Padding(
          padding: EdgeInsets.only(top: 8.sp, right: 20.sp),
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24,
          ),
        )
      ],
    );
  }
}
