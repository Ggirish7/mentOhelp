import 'package:get/get.dart';
import 'package:ment_o_help/app/view/appointment_screen/appointment_screen.dart';
import 'package:ment_o_help/app/view/chat_bot_screen/chat_bot_screen.dart';
import 'package:ment_o_help/app/view/home_screen/home_screen.dart';
import 'package:ment_o_help/app/view/profile_screen/profile_screen.dart';

class DashBoardController extends GetxController {
  final RxInt _selectedIndex = 0.obs;

  void onTapChange(int index) {
    _selectedIndex.value = index;
  }

  int getSelectedIndex() {
    return _selectedIndex.value;
  }

  final screens = [
    const HomeScreen(),
    const ChatBotScreen(),
    const AppointmentScreen(),
    const ProfileScreen(),
  ];
}
