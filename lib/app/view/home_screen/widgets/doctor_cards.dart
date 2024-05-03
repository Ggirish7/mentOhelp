import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorCards extends StatelessWidget {
  const DoctorCards({super.key, required this.text, required this.imagePath});

  final String text;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 8.h, left: 0.w, right: 16.w),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(6.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20.h),
              child: CircleAvatar(
                // backgroundColor: Colors.purple,
                backgroundImage: AssetImage(imagePath),
                radius: 50.r,
              ),
            ),
            AutoSizeText(
              text,
              style: GoogleFonts.inter(
                  fontSize: 14.sp, fontWeight: FontWeight.w600),
            ),
            AutoSizeText(
              "Psychologist",
              style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[700]),
            ),
            SizedBox(
              height: 4.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xFFEE805F),
                  size: 22,
                ),
                SizedBox(
                  width: 2.w,
                ),
                AutoSizeText(
                  "4.7",
                  style: GoogleFonts.inter(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xFFEE805F),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
