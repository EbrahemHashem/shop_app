import 'package:flutter/material.dart';
import 'package:shop_app/core/utils/assets.dart';
import 'package:shop_app/features/splash/presentation/views/widgets/custom_splash_text.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            Assets.splashImage,
            fit: BoxFit.cover,
          ),
          const CustomSplashText(),
        ],
      ),
    );
  }
}
