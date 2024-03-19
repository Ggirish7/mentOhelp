import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccWidget extends StatelessWidget {
  const CreateAccWidget({
    super.key,
    required this.labelText,
    this.keyboardType,
    this.validator,
    this.onChanged,
  });
  final String labelText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style:
          GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.w600),
      keyboardType: keyboardType,
      onTapOutside: ((event) {
        FocusScope.of(context).unfocus();
      }),
      validator: validator,
      onChanged: onChanged,
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
      ),
    );
  }
}
