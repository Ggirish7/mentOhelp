import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AgeGenderController extends GetxController {
  final RxInt _genderIndex = 0.obs;

  void changeGenderIndex(int index) {
    _genderIndex.value = index;
  }

  int getGenderIndex() {
    return _genderIndex.value;
  }

  final Rx<DateTime> _age = DateTime(2006).obs;

  final format = DateFormat("dd/MM/yyyy");

  void changeAge(DateTime? value) {
    _age.value = value!;
  }

  void setAge(BuildContext context) async {
    _age.value = (await showDatePicker(
          context: context,
          firstDate: DateTime(1900),
          lastDate: DateTime(2016),
          initialDate: DateTime(2008),
        )) ??
        getAge();
  }

  String getFormattedAge() {
    return format.format(_age.value);
  }

  DateTime getAge() {
    return _age.value;
  }
}
