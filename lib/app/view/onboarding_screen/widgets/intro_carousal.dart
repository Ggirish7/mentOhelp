import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 1500),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
      items: [1, 2, 3].map(
        (i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/carousal_images/carousal_image_$i.png",
                      width: double.maxFinite,
                      height: 250.h,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(OnBoarding().onboardingMainText[i - 1],
                        style: AppFonts.carousalMainTextStyle),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text(OnBoarding().onboardingSubText[i - 1],
                        style: AppFonts.carousalSubTextStyle),
                  ],
                ),
              );
            },
          );
        },
      ).toList(),
    );
  }
}

class OnBoarding {
  final List<String> onboardingMainText = [
    "Best in class therapists",
    "Know your mental fitness",
    "ment-o-bud"
  ];

  final List<String> onboardingSubText = [
    "Keeping it Real and Honest",
    "Take Mental Health Assessment",
    "Your Emotional Helper Friend"
  ];
}
