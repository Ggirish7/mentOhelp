import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/view/doctor_appointment_screen/doctor_appointment_screen.dart';
import 'package:ment_o_help/app/view/doctors_list/widgets/doctors_list_card.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_routes.dart';

class DoctorsListScreen extends StatelessWidget {
  const DoctorsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: Col.appBackGround),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.white, //change your color here
            ),
            title: AutoSizeText(
              "Doctors",
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
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      'Book Later',
                    ),
                  )
                ],
                onSelected: (value) {
                  if (value == 1) {
                    Get.offNamed(RoutesNames.dashBoardScreen);
                  }
                },
              ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    DoctorsListCard(
                      text: 'Dr.Prathamesh Wagh',
                      imagePath: 'assets/images/doc_male.jpeg',
                      onTap: () {
                        Get.to(
                            () => const DoctorAppointmentScreen(
                                  name: 'Dr.Prathamesh Wagh',
                                  image: 'assets/images/doc_male.jpeg',
                                ),
                            transition: Transition.downToUp,
                            duration: const Duration(seconds: 1));
                      },
                    ),
                    DoctorsListCard(
                      text: 'Dr.Sanika Khanvilkar',
                      imagePath: 'assets/images/doc_female.jpeg',
                      onTap: () {
                        Get.to(
                            () => const DoctorAppointmentScreen(
                                  image: 'assets/images/doc_female.jpeg',
                                  name: 'Dr.Sanika Khanvilkar',
                                ),
                            transition: Transition.downToUp,
                            duration: const Duration(seconds: 1));
                      },
                    ),
                    DoctorsListCard(
                      text: 'Dr.Yash Kadge',
                      imagePath: 'assets/images/doc_male.jpeg',
                      onTap: () {
                        Get.to(
                            () => const DoctorAppointmentScreen(
                                  name: 'Dr.Yash Kadge',
                                  image: 'assets/images/doc_male.jpeg',
                                ),
                            transition: Transition.downToUp,
                            duration: const Duration(seconds: 1));
                      },
                    ),
                    DoctorsListCard(
                      text: 'Dr.Asharani Shinde',
                      imagePath: 'assets/images/doc_female.jpeg',
                      onTap: () {
                        Get.to(
                            () => const DoctorAppointmentScreen(
                                  name: 'Dr.Asharani Shinde',
                                  image: 'assets/images/doc_female.jpeg',
                                ),
                            transition: Transition.downToUp,
                            duration: const Duration(seconds: 1));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
