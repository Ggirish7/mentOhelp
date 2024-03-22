import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Options(
          labelText: "Not At All",
          onPressed: null,
        ),
        SizedBox(
          height: 5.spMax,
        ),
        const Options(
          labelText: "Several Days",
          onPressed: null,
        ),
        SizedBox(
          height: 5.spMax,
        ),
        const Options(
          labelText: "More Than Half The Days",
          onPressed: null,
        ),
        SizedBox(
          height: 5.spMax,
        ),
        const Options(
          labelText: "Nearly Everyday",
          onPressed: null,
        ),
      ],
    );
  }
}

class Options extends StatelessWidget {
  const Options({super.key, required this.labelText, this.onPressed});
  final String labelText;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        fixedSize: Size(250.spMax, 40.spMax),
        side: const BorderSide(
          width: 1.34,
          color: Colors.black54,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(67.0),
        ),
      ),
      child: Text(
        labelText,
        style: GoogleFonts.inter(fontSize: 16.spMax, color: Colors.black),
      ),
    );
  }
}
