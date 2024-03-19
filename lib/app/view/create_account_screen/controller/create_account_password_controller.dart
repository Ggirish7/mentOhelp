import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CreateAccPasswordController extends GetxController {
  // Key for Create account Form
  final GlobalKey<FormState> createAccPasswordKey = GlobalKey<FormState>();

  // Create Password and Confirm Password Values
  RxString createPassword = "".obs;
  RxString confirmPassword = "".obs;

  //regex for create password and update passwords
  final RegExp passwordValidator =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

  // Create Password and Confirm Password Values
  String? validateCreatePassword(String createPassword) {
    if (createPassword.isEmpty) {
      return "Please Enter Password";
    } else if (!passwordValidator.hasMatch(createPassword)) {
      return "Password must have at least 8 characters and must\ncontain one uppercase letter, one lowercase letter\nand one digit";
    }
    return null;
  }

  String? validateConfirmPassword(
      String confirmPassword, String createPassword) {
    if (confirmPassword.isEmpty) {
      return "Please Enter Password";
    } else if (createPassword != confirmPassword) {
      return "Passwords do not match";
    }
    return null;
  }

  // Obscure Password validators and logic
  RxBool obscureTextCreatePassword = true.obs;
  RxBool obscureTextConfirmPassword = true.obs;

  void changeObscureCreatePassword() {
    obscureTextCreatePassword.value = !obscureTextCreatePassword.value;
  }

  void changeObscureConfirmPassword() {
    obscureTextConfirmPassword.value = !obscureTextConfirmPassword.value;
  }
}
