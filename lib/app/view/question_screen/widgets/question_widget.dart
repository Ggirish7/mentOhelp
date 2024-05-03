import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/view/question_screen/controller/question_screen_controller.dart';
import 'package:ment_o_help/app/view/question_screen/widgets/answer_widget.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var questionScreenController = Get.put(QuestionScreenController());
    return CarouselSlider(
      carouselController: questionScreenController.buttonCarouselController,
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.78,
        viewportFraction: 0.83,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 1500),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
        scrollPhysics: const NeverScrollableScrollPhysics(),
        onPageChanged: ((index, reason) =>
            questionScreenController.updateQuestionIndex(index)),
      ),
      items: [0, 1, 2, 3, 4, 5, 6, 7, 8].map(
        (i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                width: MediaQuery.of(context).size.width * 0.85,
                decoration: BoxDecoration(
                    // color: Col.whit,
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(25.r)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Over the last 2 weeks, how often have you been bothered by any of the following problems?",
                      style: AppFonts.pageTitles2,
                    ),
                    Text(
                      Questions().questionText[i],
                      style: GoogleFonts.catamaran(
                        textStyle: TextStyle(
                          fontSize: 22.spMax,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    // const Spacer(),
                    const AnswerWidget(),
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

class Questions {
  final List<String> questionText = [
    "Little interest or pleasure in doing things",
    "Feeling down, depressed, or hopeless",
    "Trouble falling or staying asleep, or sleeping too much",
    "Feeling tired or having little energy",
    "Poor appetite or overeating",
    "Feeling bad about yourself or that you are a failure or have let yourself or your family down",
    "Trouble concentrating on things, such as reading the newspaper or watching television",
    "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual",
    "Thoughts that you would be better off dead, or of hurting yourself in some way"
  ];
}
