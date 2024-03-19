import 'package:get/get.dart';

class CreateAccEmailPhnController extends GetxController {
  // Initializing emailId and Phone number for create account screen
  RxString emailId = "".obs;
  RxString phoneNumber = "".obs;

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
}
