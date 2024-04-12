import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccPasswordWidget extends StatelessWidget {
  const CreateAccPasswordWidget({
    super.key,
    required this.labelText,
    required this.obscureText,
    required this.onPressed,
    this.validator,
    this.onChanged,
    this.controller,
  });
  final String labelText;
  final bool obscureText;
  final void Function()? onPressed;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style:
          GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.w600),
      onTapOutside: ((event) {
        FocusScope.of(context).unfocus();
      }),
      obscureText: obscureText,
      validator: validator,
      onChanged: onChanged,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: const Color(0xFF828693), width: 2.sp),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 2.sp),
        ),
        labelText: labelText,
        labelStyle: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF828693),
        ),
        suffixIcon: IconButton(
          onPressed: onPressed,
          color: const Color(0xFF828693),
          icon: obscureText
              ? const Icon(
                  Icons.visibility_off,
                )
              : const Icon(
                  Icons.visibility,
                ),
        ),
      ),
    );
  }
}
