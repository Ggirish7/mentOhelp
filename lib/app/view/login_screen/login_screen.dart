import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/utils/widgets/filled_action_button.dart';
import 'package:ment_o_help/app/view/create_account_screen/widgets/create_account_input_widget.dart';
import 'package:ment_o_help/app/view/create_account_screen/widgets/create_account_password_widget.dart';
import 'package:ment_o_help/app/view/login_screen/login_password_controller.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';
import 'package:ment_o_help/core/app_icons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static final _loginPasswordController = Get.put(LoginPasswordController());
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 23.18.sp,
                    ),
                    SizedBox(
                      child: GestureDetector(
                        onTap: () => Get.back(),
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
                  padding: EdgeInsets.only(left: 30.0.sp, right: 43.sp),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100.sp,
                      ),
                      const CreateAccWidget(
                        labelText: "Email Id",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 23.sp,
                      ),
                      Obx(
                        () => CreateAccPasswordWidget(
                          labelText: "Password",
                          obscureText: _loginPasswordController
                              .obscureTextLoginPassword.value,
                          onPressed: () => _loginPasswordController
                              .changeObscureLoginPassword(),
                        ),
                      ),
                      SizedBox(
                        height: 100.sp,
                      ),
                      const FilledActionButton(
                        labelText: "LOG IN",
                        onPressed: null,
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
