import 'package:flutter/material.dart';
import 'package:shop_app/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      home: const HomeView(),
    );
  }
}
