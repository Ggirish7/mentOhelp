import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/view/create_account_screen/controller/create_account_controller.dart';
import 'package:ment_o_help/app/view/create_account_screen/widgets/create_account_input_widget.dart';
import 'package:ment_o_help/app/view/create_account_screen/widgets/create_account_password_widget.dart';

class InputForm extends StatelessWidget {
  const InputForm({super.key});
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CreateAccountController());
    return Form(
      key: CreateAccountController.createAccPasswordKey,
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
            onChanged: (value) => controller.emailId.value = value,
            validator: (value) => controller.validateEmailId(value!),
          ),
          SizedBox(
            height: 23.sp,
          ),
          CreateAccWidget(
            labelText: "Phone",
            keyboardType: TextInputType.phone,
            onChanged: (value) => controller.phoneNumber.value = value,
            validator: (value) => controller.validatePhoneNumber(value!),
          ),
          SizedBox(
            height: 23.sp,
          ),
          Obx(
            () => CreateAccPasswordWidget(
              labelText: "Create Password",
              obscureText: controller.obscureTextCreatePassword.value,
              onPressed: () => controller.changeObscureCreatePassword(),
              onChanged: (value) => controller.createPassword.value = value,
              validator: (value) => controller.validateCreatePassword(value!),
            ),
          ),
          SizedBox(
            height: 23.sp,
          ),
          Obx(
            () => CreateAccPasswordWidget(
              labelText: "Confirm Password",
              obscureText: controller.obscureTextConfirmPassword.value,
              onPressed: () => controller.changeObscureConfirmPassword(),
              onChanged: (value) => controller.confirmPassword.value = value,
              validator: (value) => controller.validateConfirmPassword(
                  value!, controller.createPassword.value),
            ),
          ),
        ],
      ),
    );
  }
}
