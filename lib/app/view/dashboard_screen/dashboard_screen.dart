import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/view/dashboard_screen/controller/dashboard_screen_controller.dart';
import 'package:ment_o_help/app/view/dashboard_screen/widgets/custom_navigation_bar.dart';
import 'package:ment_o_help/core/app_colors.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dashBoardController = Get.put(DashBoardController());
    return Container(
      decoration: BoxDecoration(
        gradient: Col.appBackGround,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(
          () => IndexedStack(
            index: dashBoardController.getSelectedIndex(),
            children: dashBoardController.screens,
          ),
        ),
        // body: const AppointmentScreen(),
        bottomNavigationBar:
            CustomNavigationBar(dashBoardController: dashBoardController),
      ),
    );
  }
}
