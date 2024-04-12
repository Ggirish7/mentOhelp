import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool obscureTextLoginPassword = true.obs;
  RxString emailId = "".obs;
  RxString password = "".obs;

  // Initializiong TextEditing Controllers
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  // Clearing Controllers
  void clearControllers() {
    emailTextController.clear();
    passwordTextController.clear();
  }

  // Key for Loing
  static final GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  String? validateEmail(String email) {
    if (email.isEmpty) {
      return "Can't be empty";
    }
    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      return "Can't be empty";
    }
    return null;
  }

  void changeObscureLoginPassword() {
    obscureTextLoginPassword.value = !obscureTextLoginPassword.value;
  }
}
