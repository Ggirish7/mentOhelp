import 'package:get/get.dart';

class CoreIssuesScreenController extends GetxController {
  RxBool anxietyMood = false.obs;
  RxBool greif = false.obs;
  RxBool lifestyle = false.obs;
  RxBool selfGrowth = false.obs;
  RxBool relationships = false.obs;
  RxBool traumaMood = false.obs;
  RxBool sexualGender = false.obs;
  RxBool worklifeStress = false.obs;

  void updateAnxietyMood() {
    anxietyMood.value = !anxietyMood.value;
  }

  void updateGreif() {
    greif.value = !greif.value;
  }

  void updateLifestyle() {
    lifestyle.value = !lifestyle.value;
  }

  void updateSelfGrowth() {
    selfGrowth.value = !selfGrowth.value;
  }

  void updateRelationships() {
    relationships.value = !relationships.value;
  }

  void updateTraumaMood() {
    traumaMood.value = !traumaMood.value;
  }

  void updateSexualGender() {
    sexualGender.value = !sexualGender.value;
  }

  void updateWorklifeStress() {
    worklifeStress.value = !worklifeStress.value;
  }

  bool nextScreenCondition() {
    return (anxietyMood.value == true ||
        greif.value == true ||
        lifestyle.value == true ||
        selfGrowth.value == true ||
        relationships.value == true ||
        traumaMood.value == true ||
        sexualGender.value == true ||
        worklifeStress.value == true);
  }
}
