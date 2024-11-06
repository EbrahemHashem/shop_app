import 'package:flutter/material.dart';
import 'package:shop_app/features/home/presentation/views/custom_home_body.dart';
import 'package:shop_app/features/home/presentation/views/widgets/custom_home_banners.dart';
import 'package:shop_app/features/home/presentation/views/widgets/header/custom_home_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomHomeHeader(),
            SizedBox(height: 20),
            CustomHomeBanners(),
            SizedBox(height: 20),
            CustomHomeBody(),
          ],
        ),
      ),
    );
  }
}
