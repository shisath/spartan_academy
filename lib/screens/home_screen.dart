import 'package:flutter/material.dart';
import 'package:spartan_academy/screens/members_screen.dart';

import 'admin_login_screen.dart';
import 'welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: AdminLoginScreen());
  }
}
