import 'package:flutter/material.dart';
import 'package:shop_app/features/home/presentation/views/custom_bottom_navigation_bar.dart';
import 'package:shop_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:shop_app/features/login/presentation/views/login.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}
