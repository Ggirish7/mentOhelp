import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  // Initializing emailId and Phone number for create account screen
  RxString name = "".obs;
  RxString emailId = "".obs;
  RxString phoneNumber = "".obs;

  // Initializiong TextEditing Controllers
  TextEditingController nameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController createPasswordTextController = TextEditingController();
  TextEditingController confirmPasswordTextController = TextEditingController();

  // Clearing Controllers
  void clearControllers() {
    nameTextController.clear();
    emailTextController.clear();
    createPasswordTextController.clear();
    confirmPasswordTextController.clear();
  }

  // Validation for Name
  String? validateName(String name) {
    if (name.isEmpty) {
      return "Can't be empty";
    }
    return null;
  }

  // Validation for EmailId
  String? validateEmailId(String emailId) {
    if (emailId.isEmpty) {
      return "Enter Email Id";
    } else if (!emailId.isEmail) {
      return "Enter a valid Email Id";
    }
    return null;
  }

  // Validation Phone number
  String? validatePhoneNumber(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      return "Enter Phone Number";
    } else if (phoneNumber.length != 10) {
      return "Enter a valid Phone Number";
    }
    return null;
  }

  // Key for Create account Form
  static final GlobalKey<FormState> createAccPasswordKey =
      GlobalKey<FormState>();

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
