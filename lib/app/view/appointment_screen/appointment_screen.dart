import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/view/appointment_screen/widgets/appointment_action_button.dart';
import 'package:ment_o_help/app/view/appointment_screen/widgets/appointment_card.dart';
import 'package:ment_o_help/app/view/appointment_screen/widgets/filled_button2.dart';
import 'package:ment_o_help/app/view/doctor_appointment_screen/doctor_appointment_screen.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.h, left: 8.h),
                  child: AppBar(
                    title: AutoSizeText(
                      "Appointments",
                      maxLines: 2,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 30.w,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FilledActionButton3(
                      labelText: 'Upcoming',
                      filled: true,
                      bigButton: true,
                      onPressed: null,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const FilledActionButton3(
                      labelText: 'Completed',
                      filled: false,
                      bigButton: true,
                      onPressed: null,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                  child: SizedBox(
                    height: 650.h,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      padding: EdgeInsets.only(bottom: 100.h),
                      children: [
                        AppointmentCard(
                          imagePath: 'assets/images/doc_male.jpeg',
                          text: 'Dr.Yash Kadge',
                          subText: 'Psychiatrist',
                          onTapReschedule: () {
                            Get.to(
                                () => const DoctorAppointmentScreen(
                                      name: 'Dr.Yash Kadge',
                                      image: 'assets/images/doc_male.jpeg',
                                    ),
                                transition: Transition.downToUp,
                                duration: const Duration(seconds: 1));
                          },
                        ),
                        AppointmentCard(
                          imagePath: 'assets/images/doc_female.jpeg',
                          text: 'Dr.Sanika Khanvilkar',
                          subText: 'Psychiatrist',
                          onTapReschedule: () {
                            Get.to(
                                () => const DoctorAppointmentScreen(
                                      name: 'Dr.Sanika Khanvilkar',
                                      image: 'assets/images/doc_female.jpeg',
                                    ),
                                transition: Transition.downToUp,
                                duration: const Duration(seconds: 1));
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 0.h,
              right: 0.w,
              child: Padding(
                padding: EdgeInsets.all(8.w),
                child: const FilledActionButton2(
                    labelText: 'Book New', onPressed: null),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
