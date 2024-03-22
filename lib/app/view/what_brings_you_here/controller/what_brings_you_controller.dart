import 'package:get/get.dart';

class WhatBringsYouController extends GetxController {
  final RxInt _pathIndex = 0.obs;

  setPathIndex(int index) {
    _pathIndex.value = index;
  }

  getPathIndex() {
    return _pathIndex.value;
  }
}
