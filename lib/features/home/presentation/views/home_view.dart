import 'package:flutter/material.dart';
import 'package:shop_app/features/home/presentation/views/custom_bottom_navigation_bar.dart';
import 'package:shop_app/features/register/presentation/views/register.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Register(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
