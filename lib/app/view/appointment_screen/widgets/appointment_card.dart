import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/view/appointment_screen/widgets/appointment_action_button.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard(
      {super.key,
      required this.text,
      required this.subText,
      required this.imagePath,
      this.onTapReschedule});

  final String text;
  final String subText;
  final String imagePath;
  final void Function()? onTapReschedule;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      text,
                      style: GoogleFonts.inter(
                          fontSize: 20.sp, fontWeight: FontWeight.w600),
                    ),
                    AutoSizeText(
                      "Psychologist",
                      style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[700]),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(imagePath),
                  radius: 30.r,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardDetailsWidget(
                  iconData: Icons.calendar_month,
                  text: "01/05/2024",
                ),
                CardDetailsWidget(
                  iconData: Icons.watch_later_outlined,
                  text: "10:30 AM",
                ),
                CardDetailsWidget(
                  iconData: Icons.trip_origin,
                  color: Colors.green,
                  text: "Confirmed",
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const FilledActionButton3(
                    labelText: 'Cancel',
                    filled: false,
                    bigButton: false,
                    onPressed: null),
                FilledActionButton3(
                    labelText: 'Reschedule',
                    filled: true,
                    bigButton: false,
                    onPressed: onTapReschedule),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardDetailsWidget extends StatelessWidget {
  const CardDetailsWidget(
      {super.key, required this.text, this.color, required this.iconData});

  final String text;
  final Color? color;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: Padding(
              padding: EdgeInsets.only(right: 1.sp),
              child: Icon(
                iconData,
                size: 20.w,
                color: color,
              ),
            ),
          ),
          TextSpan(
            text: text,
            style: GoogleFonts.inter(
                color: Colors.black87,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
