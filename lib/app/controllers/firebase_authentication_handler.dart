import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/controllers/firebase_functions.dart';
import 'package:ment_o_help/app/utils/globals.dart';
import 'package:ment_o_help/app/view/create_account_screen/controller/create_account_controller.dart';
import 'package:ment_o_help/app/view/login_screen/controller/login_controller.dart';
import 'package:ment_o_help/core/app_routes.dart';

class FireManager {
  static final _createAccountController = Get.put(CreateAccountController());
  static final _loginController = Get.put(LoginController());

  static var email = _createAccountController.emailId.value;
  static var passWord = _createAccountController.confirmPassword.value;
  static var name = _createAccountController.name.value;

  static void createAccountFirebase() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: passWord);
      _createAccountController.clearControllers();

      await FirebaseAuth.instance.currentUser!.updateDisplayName(name);

      await FirebaseAuth.instance.currentUser!.verifyBeforeUpdateEmail(email);

      await FirestoreServices.saveUser(name, email, userCredential.user!.uid);

      Get.offNamed(RoutesNames.ageAndGender);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        getSnackBar("Password Provided is too weak");
      } else if (e.code == 'email-already-in-use') {
        getSnackBar("email already in use");
      }
    } catch (e) {
      getSnackBar(e.toString());
    }
  }

  // static void testsignupWithGoogle() async {
  //   final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

  //   final GoogleSignInAuthentication gAuth = await gUser!.authentication;

  //   final credential = GoogleAuthProvider.credential(
  //       accessToken: gAuth.accessToken, idToken: gAuth.idToken);
  // }

  static void signupWithGoogle() async {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      FirebaseAuth.instance.signInWithProvider(_googleAuthProvider);
    } catch (e) {}
  }

  static void accLoginfirebase() {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: _loginController.emailId.value,
            password: _loginController.password.value)
        .then(
      (value) {
        Get.offAllNamed(RoutesNames.dashBoardScreen);
        _loginController.clearControllers();
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
}
