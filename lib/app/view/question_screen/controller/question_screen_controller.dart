import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class QuestionScreenController extends GetxController {
  CarouselController buttonCarouselController = CarouselController();
  final RxInt _questionIndex = 0.obs;
  final List<int> _selectedAnswers = List<int>.filled(9, 0).obs;

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
}
