import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  final String text;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.h, right: 10.w, top: 28.h),
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Icon(
            icon,
            color: Colors.white,
            size: 28.w,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: AutoSizeText(
            text,
            style: AppFonts.profileListTile,
          ),
        ),
        trailing: GestureDetector(
          onTap: onTap,
          child: Icon(
            Icons.navigate_next_sharp,
            color: Colors.white,
            size: 40.w,
          ),
        ),
      ),
    );
  }
}
