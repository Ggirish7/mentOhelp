import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class UserSelectedScreenWidget extends StatelessWidget {
  const UserSelectedScreenWidget({super.key, required this.labelText});
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        gradient: Col.buttonBackGround,
        borderRadius: BorderRadius.circular(10.spMax),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.spMax),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 36.spMax,
            width: 43.spMax,
            decoration: const BoxDecoration(
              color: Color(
                0xFFD9D9D9,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.08,
          ),
          Text(labelText, style: AppFonts.userSelectedSCreenText)
        ],
      ),
    );
  }
}
