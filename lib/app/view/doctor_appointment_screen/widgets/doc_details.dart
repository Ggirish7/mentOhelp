import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DocDetailsCard extends StatelessWidget {
  const DocDetailsCard({
    super.key,
    required this.name,
    required this.image,
  });

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(8.h),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: SizedBox.fromSize(
              size: Size.fromRadius(65.r),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(
          width: 8.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.h,
            ),
            AutoSizeText(
              name,
              maxLines: 2,
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            AutoSizeText(
              "Psychologist",
              style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[200]),
            ),
            SizedBox(
              height: 20.h,
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
      ],
    );
  }
}
