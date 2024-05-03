import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticleCards extends StatelessWidget {
  const ArticleCards(
      {super.key,
      required this.text,
      required this.subText,
      required this.imagePath});

  final String text;
  final String subText;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    var card = MediaQuery.of(context).size.width;
    return Card(
      margin: EdgeInsets.only(top: 8.h, left: 0.w, right: 16.w),
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.all(6.h),
        width: card * 0.86,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
              radius: 50.r,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
