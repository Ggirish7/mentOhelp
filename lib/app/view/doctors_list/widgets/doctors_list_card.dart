import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorsListCard extends StatelessWidget {
  const DoctorsListCard(
      {super.key, required this.text, required this.imagePath, this.onTap});

  final String text;
  final String imagePath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.only(top: 16.h),
        color: Colors.white,
        elevation: 0,
        child: Container(
          padding: EdgeInsets.all(6.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(8.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(55.r),
                    child: Image.asset(imagePath, fit: BoxFit.cover),
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
                    height: 20.h,
                  ),
                  AutoSizeText(
                    text,
                    maxLines: 2,
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      // color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  AutoSizeText(
                    "Psychiatrist",
                    style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[700]),
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
          ),
        ),
      ),
    );
  }
}
