import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
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
    _score.value = (sum / 9).floor();

    Get.offAllNamed(RoutesNames.analyzingScreen);
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
    // No Help
    if (_score.value <= 10) {
    }
    // Self Help
    else if ((_score.value > 10) && (_score.value <= 30)) {
    }
    // Online Counselling
    else if ((_score.value > 30) && (_score.value <= 70)) {
    }
    // Offline
    else if (_score.value > 70) {}
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
