import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool obscureTextLoginPassword = true.obs;
  RxString emailId = "".obs;
  RxString password = "".obs;

  void changeObscureLoginPassword() {
    obscureTextLoginPassword.value = !obscureTextLoginPassword.value;
  }
}
