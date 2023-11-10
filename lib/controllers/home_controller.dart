import 'package:get/get.dart';
import 'package:spartan_academy/screens/admin_dashboard_screen.dart';
import 'package:spartan_academy/screens/admin_login_screen.dart';
import 'package:spartan_academy/screens/contact_us_screen.dart';
import 'package:spartan_academy/screens/members_screen.dart';
import 'package:spartan_academy/screens/welcome_screen.dart';

class HomeController extends GetxController {
  List homeMenuList = [
    'Home',
    'Members',
    'Contact',
    'Admin Login',
    'Admin Dashboard'
  ];

  List screensList = [
    WelcomeScreen(),
    MembersScreen(),
    ContactUsScreen(),
    AdminLoginScreen(),
    AdminDashboardScreen()
  ];

  var currentScreenSelectionIndex = 0.obs;

  changeCurrentScreenSelectionIndex(int newIndex) =>
      currentScreenSelectionIndex.value = newIndex;
}
