import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ment_o_help/app/utils/globals.dart';
import 'package:ment_o_help/app/view/create_account_screen/controller/create_account_controller.dart';
import 'package:ment_o_help/app/view/login_screen/controller/login_controller.dart';
import 'package:ment_o_help/core/app_routes.dart';

class FireManager {
  static final _createAccountController = Get.put(CreateAccountController());
  static final _loginController = Get.put(LoginController());
  static late final User loggedInUser;
  // static const String loggedInUser = 'K7gibTkKRPd7EGJ2W7opjyQ3Gr13';

  static var email = _createAccountController.emailId.value;
  static var passWord = _createAccountController.confirmPassword.value;
  static var name = _createAccountController.name.value;

  static void checkAuthState(User? user) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        loggedInUser = FirebaseAuth.instance.currentUser!;
      }
    });
  }

  static void createAccountFirebase() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: passWord);
      _createAccountController.clearControllers();

      // await FirebaseAuth.instance.currentUser!.verifyBeforeUpdateEmail(email);

      // await FirestoreServices.saveUser(name, email, userCredential.user!.uid);
      if (FirebaseAuth.instance.currentUser == null) {
        // await FirebaseAuth.instance.currentUser!.updateDisplayName(name);
        FirebaseAuth.instance.authStateChanges();
        checkAuthState(FirebaseAuth.instance.currentUser);
        Get.back(closeOverlays: true);
        Get.snackbar("Error", "Failed to Sign Up");
      } else {
        if (userCredential.additionalUserInfo!.isNewUser) {
          FirebaseAuth.instance.authStateChanges();
          checkAuthState(FirebaseAuth.instance.currentUser);
          Get.offAllNamed(RoutesNames.ageAndGender);
        } else {
          FirebaseAuth.instance.authStateChanges();
          checkAuthState(FirebaseAuth.instance.currentUser);
          Get.offAllNamed(RoutesNames.dashBoardScreen);
        }
      }
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

  static void signupWithGoogle() async {
    try {
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication gAuth = await gUser!.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: gAuth.accessToken, idToken: gAuth.idToken);

      final authResult =
          await FirebaseAuth.instance.signInWithCredential(credential);

      if (FirebaseAuth.instance.currentUser == null) {
        FirebaseAuth.instance.authStateChanges();
        checkAuthState(FirebaseAuth.instance.currentUser);
        Get.back(closeOverlays: true);
        Get.snackbar("Error", "Failed to Sign In");
      } else {
        if (authResult.additionalUserInfo!.isNewUser) {
          FirebaseAuth.instance.authStateChanges();
          checkAuthState(FirebaseAuth.instance.currentUser);
          Get.offAllNamed(RoutesNames.ageAndGender);
        } else {
          FirebaseAuth.instance.authStateChanges();
          checkAuthState(FirebaseAuth.instance.currentUser);
          Get.offAllNamed(RoutesNames.dashBoardScreen);
        }
      }
    } on FirebaseAuthException catch (e) {
      Get.back(closeOverlays: true);
      Get.snackbar(snackPosition: SnackPosition.BOTTOM, "Error", e.toString());
    }
  }

  static void accLoginfirebase() {
    try {
      FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _loginController.emailId.value,
          password: _loginController.password.value);
      if (FirebaseAuth.instance.currentUser != null) {
        FirebaseAuth.instance.authStateChanges();
        checkAuthState(FirebaseAuth.instance.currentUser);
        Get.offAllNamed(RoutesNames.dashBoardScreen);
        _loginController.clearControllers();
        _loginController.emailId.value = "";
        _loginController.password.value = "";
      }
    } catch (error) {
      Get.snackbar("Error", "An Invalid credentials");
    }
  }

  static void accSignoutFirebase() async {
    await FirebaseAuth.instance
        .signOut()
        .then((value) => Get.offNamed(RoutesNames.login));
    FirebaseAuth.instance.authStateChanges();
    checkAuthState(FirebaseAuth.instance.currentUser);
  }
}
