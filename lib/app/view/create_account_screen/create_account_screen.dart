import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/controllers/firebase_authentication_handler.dart';
import 'package:ment_o_help/app/utils/widgets/filled_action_button.dart';
import 'package:ment_o_help/app/view/create_account_screen/controller/create_account_controller.dart';
import 'package:ment_o_help/app/view/create_account_screen/widgets/input_fields.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';
import 'package:ment_o_help/core/app_icons.dart';
import 'package:ment_o_help/core/app_routes.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: Col.appBackGround,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 78.sp,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 18.sp,
                    ),
                    SizedBox(
                      width: 24.sp,
                      height: 24.sp,
                      child: GestureDetector(
                        onTap: () => Get.back(),
                        child: Image.asset(
                          AppIcons.backButton,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 51.75.sp,
                    ),
                    Text("CREATE YOUR ACCOUNT", style: AppFonts.pageTitles),
                    const Spacer(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0.sp, right: 43.sp),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 44.sp,
                      ),
                      const InputForm(),
                      SizedBox(
                        height: 50.sp,
                      ),
                      FilledActionButton(
                        labelText: "SIGN UP",
                        // onPressed: () => Get.toNamed(RoutesNames.ageAndGender),
                        onPressed: () {
                          onTapSignUp();
                        },
                      ),
                      SizedBox(
                        height: 29.62.sp,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Already have an account? ",
                              style: GoogleFonts.inter(color: Colors.white),
                            ),
                            TextSpan(
                                text: "Log In",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  textStyle: const TextStyle(
                                      decoration: TextDecoration.underline),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    onTapLogin();
                                  }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 22.sp,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // On Hitting the SignUp Button
  onTapSignUp() {
    if (CreateAccountController.createAccPasswordKey.currentState!.validate()) {
      FireManager.createAccountFirebase();
    }
  }

  // On tap singin with google
  onTapSingUpWithGoogle() {
    FireManager.signupWithGoogle();
    Get.offNamed(RoutesNames.finalScreen);
  }

  // Navigates to the Login Screen
  onTapLogin() {
    Get.toNamed(RoutesNames.login);
  }
}
