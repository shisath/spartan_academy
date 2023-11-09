import 'package:flutter/material.dart';
import 'package:spartan_academy/screens/admin_dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: AdminDashboardScreen());
  }
}
