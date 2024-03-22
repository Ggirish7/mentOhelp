import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HollowButton extends StatelessWidget {
  const HollowButton({super.key, required this.labelText, this.onPressed});
  final String labelText;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        fixedSize: const Size(double.maxFinite, 50),
        side: const BorderSide(
          width: 1.34,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(67.0),
        ),
      ),
      child: Text(
        labelText,
        style: GoogleFonts.inter(fontSize: 16.spMax, color: Colors.white),
      ),
    );
  }
}
