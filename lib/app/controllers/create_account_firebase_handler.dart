import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/controllers/login_password_controller.dart';
import 'package:ment_o_help/app/view/create_account_screen/controller/create_account_email_phonenumber_controller.dart';
import 'package:ment_o_help/app/view/create_account_screen/controller/create_account_password_controller.dart';
import 'package:ment_o_help/core/app_routes.dart';

class FireManager {
  static final _passwordController = Get.put(CreateAccPasswordController());
  static final _emailPhoneController = Get.put(CreateAccEmailPhnController());
  static final _loginController = Get.put(LoginPasswordController());

  static void createAccountFirebase() {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: _emailPhoneController.emailId.value,
            password: _passwordController.confirmPassword.value)
        .then((value) => Get.offNamed(RoutesNames.finalScreen));
  }

  static void accLoginfirebase() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _loginController.emailId.value,
            password: _loginController.password.value)
        .then(
      (value) {
        Get.offNamed(RoutesNames.finalScreen);
        _loginController.emailId.value = "";
        _loginController.password.value = "";
      },
    );
  }

  static void accSignoutFirebase() {
    FirebaseAuth.instance
        .signOut()
        .then((value) => Get.offNamed(RoutesNames.login));
  }

  SnackbarController showSnackBar() {
    return Get.snackbar("Invalid Id or Password", "",
        snackPosition: SnackPosition.TOP);
  }
}
