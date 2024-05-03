import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ment_o_help/app/controllers/firebase_authentication_handler.dart';
import 'package:ment_o_help/app/view/profile_screen/widgets/profile_list_tile.dart';
import 'package:ment_o_help/app/view/profile_screen/widgets/profile_popup.dart';
import 'package:ment_o_help/core/app_colors.dart';
import 'package:ment_o_help/core/app_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: Col.buttonBackGround),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        PopUpWidget(),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              const AssetImage('assets/images/profile_bg.png'),
                          radius: 50.r,
                        ),
                        GestureDetector(
                          onTap: null,
                          child: CircleAvatar(
                            radius: 13.r,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: 18.w,
                              color: Colors.blue,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      FireManager.name,
                      style: AppFonts.profileDisplayName,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  gradient: Col.appBackGround,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 0.h),
                  child: const Column(
                    children: [
                      ProfileListTile(
                        icon: Icons.favorite_border_sharp,
                        text: 'My Saved',
                      ),
                      ProfileListTile(
                        icon: Icons.message_outlined,
                        text: 'Appointment',
                      ),
                      ProfileListTile(
                        icon: Icons.wallet_rounded,
                        text: 'Payment Method',
                      ),
                      ProfileListTile(
                        icon: Icons.question_answer_outlined,
                        text: "FAQ's",
                      ),
                      ProfileListTile(
                        icon: Icons.help,
                        text: 'Help',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
