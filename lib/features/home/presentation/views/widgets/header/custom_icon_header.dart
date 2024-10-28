import 'package:flutter/material.dart';

class CustomIconHeader extends StatelessWidget {
  const CustomIconHeader({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 47,
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.white,
        ),
        child: Icon(
          color: Colors.red,
          size: 35,
          icon,
        ),
      ),
    );
  }
}
