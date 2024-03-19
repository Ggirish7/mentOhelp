import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/view/create_account_screen/controller/create_account_email_phonenumber_controller.dart';
import 'package:ment_o_help/app/view/create_account_screen/controller/create_account_password_controller.dart';
import 'package:ment_o_help/app/view/create_account_screen/widgets/create_account_input_widget.dart';
import 'package:ment_o_help/app/view/create_account_screen/widgets/create_account_password_widget.dart';

class InputForm extends StatelessWidget {
  const InputForm({super.key});
  static final _passwordController = Get.put(CreateAccPasswordController());
  static final _emailPhoneController = Get.put(CreateAccEmailPhnController());
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _passwordController.createAccPasswordKey,
      child: Column(
        children: [
          const CreateAccWidget(
            labelText: "Name",
          ),
          SizedBox(
            height: 23.sp,
          ),
          CreateAccWidget(
            labelText: "Email",
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => _emailPhoneController.emailId.value = value,
            validator: (value) => _emailPhoneController.validateEmailId(value!),
          ),
          SizedBox(
            height: 23.sp,
          ),
          CreateAccWidget(
            labelText: "Phone",
            keyboardType: TextInputType.phone,
            onChanged: (value) =>
                _emailPhoneController.phoneNumber.value = value,
            validator: (value) =>
                _emailPhoneController.validatePhoneNumber(value!),
          ),
          SizedBox(
            height: 23.sp,
          ),
          Obx(
            () => CreateAccPasswordWidget(
              labelText: "Create Password",
              obscureText: _passwordController.obscureTextCreatePassword.value,
              onPressed: () =>
                  _passwordController.changeObscureCreatePassword(),
              onChanged: (value) =>
                  _passwordController.createPassword.value = value,
              validator: (value) =>
                  _passwordController.validateCreatePassword(value!),
            ),
          ),
          SizedBox(
            height: 23.sp,
          ),
          Obx(
            () => CreateAccPasswordWidget(
              labelText: "Confirm Password",
              obscureText: _passwordController.obscureTextConfirmPassword.value,
              onPressed: () =>
                  _passwordController.changeObscureConfirmPassword(),
              onChanged: (value) =>
                  _passwordController.confirmPassword.value = value,
              validator: (value) => _passwordController.validateConfirmPassword(
                  value!, _passwordController.createPassword.value),
            ),
          ),
        ],
      ),
    );
  }
}
