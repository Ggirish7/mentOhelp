import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/view/help_screen/concerning_screen.dart';
import 'package:ment_o_help/app/view/help_screen/critical_screen.dart';
import 'package:ment_o_help/app/view/help_screen/self_help_sccreen.dart';
import 'package:ment_o_help/core/app_routes.dart';

class QuestionScreenController extends GetxController {
  CarouselController buttonCarouselController = CarouselController();
  final RxInt _questionIndex = 0.obs;
  final List<int> _selectedAnswers = List<int>.filled(9, 0).obs;
  final List<int> _answerWeightages = [2, 4, 2, 1, 3, 4, 2, 3, 10];
  final RxInt _score = 0.obs;

  // Calculating scores
  void calculateScore() {
    int sum = 0;
    for (int i = 0; i < 9; i++) {
      sum += getAnswerAtIndex(i) * getWeightAge(i);
    }
    _score.value = sum; //(sum / 9).floor();
    Get.toNamed(RoutesNames.analyzingScreen);
  }

  // answer check condition
  bool answerCheckCondition() {
    for (var ans in _selectedAnswers) {
      if (ans == 0) {
        return false;
      }
    }
    return true;
  }

  // analyze situation
  //--> 0 - 10 = No Help --> 10 - 30 = Self Help --> 30 - 70 = Online Counselling --> 70 - 93 = Offline

  void analyszeSituation() {
    // Self Help
    if (_score.value <= 30) {
      // Get.offAllNamed(RoutesNames.selfHelpScreen);
      Get.offAll(() => const SelfHelpScreen(),
          transition: Transition.downToUp,
          duration: const Duration(seconds: 1));
    }
    // Online Counselling
    else if ((_score.value > 30) && (_score.value <= 70)) {
      // Get.offAllNamed(RoutesNames.concerningScreen);
      Get.offAll(() => const ConcerningScreen(),
          transition: Transition.downToUp,
          duration: const Duration(seconds: 1));
    }
    // Offline
    else if (_score.value > 70) {
      // Get.offAllNamed(RoutesNames.criticalScreen);
      Get.offAll(() => const CriticalScreen(),
          transition: Transition.downToUp,
          duration: const Duration(seconds: 1));
    }
  }

  int getQuestionIndex() {
    return _questionIndex.value;
  }

  void updateQuestionIndex(int index) {
    _questionIndex.value = index;
  }

  void setAnswerAtIndex(int index, int value) {
    _selectedAnswers[index] = value;
  }

  int getAnswerAtIndex(int index) {
    return _selectedAnswers[index];
  }

  List getFullList() {
    return _selectedAnswers;
  }

  int getWeightAge(int index) {
    return _answerWeightages[index];
  }

  int getScore() {
    return _score.value;
  }

  void setScore(int score) {
    _score.value = score;
  }
}
