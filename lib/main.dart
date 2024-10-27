import 'package:flutter/material.dart';
import 'package:shop_app/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashView(),
    );
  }
}
