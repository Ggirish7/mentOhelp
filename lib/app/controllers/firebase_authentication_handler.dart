import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/view/login_screen/controller/login_controller.dart';
import 'package:ment_o_help/app/view/create_account_screen/controller/create_account_controller.dart';
import 'package:ment_o_help/core/app_routes.dart';

class FireManager {
  static final _createAccountController = Get.put(CreateAccountController());
  static final _loginController = Get.put(LoginController());

  static void createAccountFirebase() {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: _createAccountController.emailId.value,
            password: _createAccountController.confirmPassword.value)
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
