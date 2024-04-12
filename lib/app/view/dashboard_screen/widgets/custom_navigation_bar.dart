import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ment_o_help/app/view/dashboard_screen/controller/dashboard_screen_controller.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    required this.dashBoardController,
  });

  final DashBoardController dashBoardController;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark().copyWith(
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          indicatorColor: Colors.white,
        ),
      ),
      child: Obx(
        () => Visibility(
          visible: dashBoardController.getSelectedIndex() == 1 ? false : true,
          child: NavigationBar(
            destinations: const [
              NavigationDestination(
                  icon: Icon(Icons.home),
                  selectedIcon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  label: "Home"),
              NavigationDestination(
                  selectedIcon: Icon(Icons.chat, color: Colors.black),
                  icon: Icon(Icons.chat),
                  label: "Chat"),
              NavigationDestination(
                  icon: Icon(Icons.calendar_month_rounded),
                  selectedIcon:
                      Icon(Icons.calendar_month_rounded, color: Colors.black),
                  label: "Appointment"),
              NavigationDestination(
                  icon: Icon(Icons.person_outline),
                  selectedIcon: Icon(
                    Icons.person_outline,
                    color: Colors.black,
                  ),
                  label: "Profile"),
            ],
            selectedIndex: dashBoardController.getSelectedIndex(),
            onDestinationSelected: (index) {
              dashBoardController.onTapChange(index);
            },
          ),
        ),
      ),
    );
  }
}
