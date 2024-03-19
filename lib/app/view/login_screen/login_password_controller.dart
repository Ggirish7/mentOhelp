import 'package:get/get.dart';

class LoginPasswordController extends GetxController {
  RxBool obscureTextLoginPassword = true.obs;

  void changeObscureLoginPassword() {
    obscureTextLoginPassword.value = !obscureTextLoginPassword.value;
  }
}
