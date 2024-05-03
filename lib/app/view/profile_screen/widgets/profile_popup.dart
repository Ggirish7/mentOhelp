import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ment_o_help/app/controllers/firebase_authentication_handler.dart';

class PopUpWidget extends StatelessWidget {
  const PopUpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
      child: PopupMenuButton(
        iconSize: 30.h,
        iconColor: Colors.white,
        itemBuilder: (context) => [
          const PopupMenuItem<int>(
            value: 0,
            child: Text("My Account"),
          ),
          const PopupMenuItem<int>(
            value: 1,
            child: Text("Settings"),
          ),
          const PopupMenuItem<int>(
            value: 2,
            child: Text("Logout"),
          ),
        ],
        onSelected: (value) {
          if (value == 0) {
            // print("My account menu is selected.");
          } else if (value == 1) {
            // print("Settings menu is selected.");
          } else if (value == 2) {
            FireManager.accSignoutFirebase();
          }
        },
      ),
    );
  }
}
