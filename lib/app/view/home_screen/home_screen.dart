import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/view/dashboard_screen/widgets/custom_app_bar.dart';
import 'package:ment_o_help/app/view/home_screen/widgets/article_cards.dart';
import 'package:ment_o_help/app/view/home_screen/widgets/doctor_cards.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          const CustomAppBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 13.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Search Doctors, articles...",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.sp,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.h),
                    child: Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        gradient: Col.buttonBackGround,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      padding:
                          EdgeInsets.only(left: 22.w, right: 12.w, top: 22.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Explore your mental health\nTake assesment",
                            style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: null,
                            style: TextButton.styleFrom(
                              minimumSize: Size.zero,
                              padding: EdgeInsets.symmetric(
                                  vertical: 6.h, horizontal: 16.w),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              backgroundColor: Colors.white,
                            ),
                            child: Text(
                              "Learn More",
                              style: GoogleFonts.inter(
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp),
                            ),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              "Top Doctors",
                              style: GoogleFonts.inter(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            AutoSizeText.rich(
                              TextSpan(
                                text: "See all",
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  // fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.toNamed(RoutesNames.doctorsListScreen);
                                  },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 230.h,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              DoctorCards(
                                text: "Dr.Sanika Khanvilkar",
                                imagePath: "assets/images/doc_female.jpeg",
                              ),
                              DoctorCards(
                                text: "Dr.Yash Kadge",
                                imagePath: "assets/images/doc_male.jpeg",
                              ),
                              DoctorCards(
                                text: "Dr.Prathamesh Wagh",
                                imagePath: "assets/images/doc_male.jpeg",
                              ),
                              DoctorCards(
                                text: "Dr.Girish Ganji",
                                imagePath: "assets/images/doc_male.jpeg",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0.h, left: 20.0.w, right: 20.0.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AutoSizeText(
                              "Mindful articles",
                              style: GoogleFonts.inter(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            AutoSizeText(
                              "See all",
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 100.h,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: const PageScrollPhysics(),
                            children: const [
                              ArticleCards(
                                imagePath: "assets/images/articles.jpg",
                                subText: "SELF-IMPROVEMENT",
                                text: "The Importance of\nMental Health",
                              ),
                              ArticleCards(
                                imagePath: "assets/images/articles.jpg",
                                subText: "SELF-IMPROVEMENT",
                                text: "The Importance of\nMental Health",
                              ),
                              ArticleCards(
                                imagePath: "assets/images/articles.jpg",
                                subText: "SELF-IMPROVEMENT",
                                text: "The Importance of\nMental Health",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
