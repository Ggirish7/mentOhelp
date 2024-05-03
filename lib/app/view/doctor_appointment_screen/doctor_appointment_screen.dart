import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/utils/widgets/filled_action_button.dart';
import 'package:ment_o_help/app/view/doctor_appointment_screen/widgets/date_tile.dart';
import 'package:ment_o_help/app/view/doctor_appointment_screen/widgets/doc_details.dart';
import 'package:ment_o_help/app/view/doctor_appointment_screen/widgets/time_tile.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_routes.dart';

class DoctorAppointmentScreen extends StatelessWidget {
  const DoctorAppointmentScreen(
      {super.key, required this.name, required this.image});

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: Col.appBackGround),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            title: AutoSizeText(
              "Doctor Details",
              maxLines: 2,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              PopupMenuButton(
                iconSize: 30.h,
                iconColor: Colors.white,
                itemBuilder: (context) => [],
              ),
            ],
          ),
          body: Container(
            padding: EdgeInsets.all(6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DocDetailsCard(
                  name: name,
                  image: image,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'About',
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      AutoSizeText(
                        "Dr. Prathamesh, a compassionate psychiatrist, offers personalized treatment plans for various mental health conditions. With her expertise and empathy, she creates a supportive environment to empower patients on their path to healing and recovery. Dr. Prathamesh's dedication to holistic wellness and patient-centered care makes him a trusted ally in mental health.",
                        style: GoogleFonts.inter(
                          color: Colors.grey[200],
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 20.h,
                        children: const [
                          DateTileWidget(
                            day: 'Tue',
                            date: '01',
                            selected: false,
                          ),
                          DateTileWidget(
                            day: 'Wed',
                            date: '02',
                            selected: false,
                          ),
                          DateTileWidget(
                            day: 'Fri',
                            date: '03',
                            selected: true,
                          ),
                          DateTileWidget(
                            day: 'Sat',
                            date: '04',
                            selected: false,
                          ),
                          DateTileWidget(
                            day: 'Mon',
                            date: '06',
                            selected: false,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 20.w,
                        runSpacing: 20.h,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: const [
                          TimeTileWidget(
                            time: "09:00 AM",
                            selected: false,
                          ),
                          TimeTileWidget(
                            time: "10:00 AM",
                            selected: false,
                          ),
                          TimeTileWidget(
                            time: "11:00 AM",
                            selected: false,
                          ),
                          TimeTileWidget(
                            time: "02:00 PM",
                            selected: true,
                          ),
                          TimeTileWidget(
                            time: "03:00 PM",
                            selected: false,
                          ),
                          TimeTileWidget(
                            time: "04:00 PM",
                            selected: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 22.h),
                  child: FilledActionButton(
                    labelText: 'Book Appointment',
                    onPressed: () {
                      Get.offAllNamed(RoutesNames.dashBoardScreen);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
