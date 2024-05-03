import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ment_o_help/app/controllers/firebase_authentication_handler.dart';
import 'package:ment_o_help/app/utils/widgets/filled_action_button.dart';
import 'package:ment_o_help/app/view/create_account_screen/widgets/create_account_input_widget.dart';
import 'package:ment_o_help/app/view/create_account_screen/widgets/create_account_password_widget.dart';
import 'package:ment_o_help/app/view/login_screen/controller/login_controller.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';
import 'package:ment_o_help/core/app_icons.dart';
import 'package:ment_o_help/core/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static final _loginPasswordController = Get.put(LoginController());
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
                  height: 78.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 23.18.w,
                    ),
                    SizedBox(
                      child: GestureDetector(
                        // onTap: () => Get.toNamed(RoutesNames.onBoarding),
                        onTap: () => Get.offAllNamed(RoutesNames.onBoarding),
                        child: Image.asset(
                          AppIcons.backButton,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 5,
                    ),
                    Text(
                      "LOG IN",
                      style: AppFonts.pageTitles,
                    ),
                    const Spacer(
                      flex: 6,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.0.w, right: 43.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100.h,
                      ),
                      Form(
                        key: LoginController.loginKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CreateAccWidget(
                              labelText: "Email Id",
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) => _loginPasswordController
                                  .emailId.value = value,
                              validator: (value) => _loginPasswordController
                                  .validateEmail(value!),
                              controller:
                                  _loginPasswordController.emailTextController,
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            Obx(
                              () => CreateAccPasswordWidget(
                                labelText: "Password",
                                obscureText: _loginPasswordController
                                    .obscureTextLoginPassword.value,
                                onPressed: () => _loginPasswordController
                                    .changeObscureLoginPassword(),
                                onChanged: (value) => _loginPasswordController
                                    .password.value = value,
                                validator: (value) => _loginPasswordController
                                    .validatePassword(value!),
                                controller: _loginPasswordController
                                    .passwordTextController,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: "Forgot Password ?",
                                style: GoogleFonts.inter(
                                    color: Colors.grey, fontSize: 14.sp),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // onTapLogin();
                                  },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100.h,
                      ),
                      FilledActionButton(
                        labelText: "LOG IN",
                        onPressed: () {
                          if (LoginController.loginKey.currentState!
                              .validate()) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                            );
                            FireManager.accLoginfirebase();
                          }
                          // Get.offAllNamed(RoutesNames.dashBoardScreen);
                        },
                      ),
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
}
