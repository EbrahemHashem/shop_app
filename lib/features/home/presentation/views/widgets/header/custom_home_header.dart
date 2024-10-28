import 'package:flutter/material.dart';
import 'package:shop_app/features/home/presentation/views/widgets/header/custom_icon_header.dart';
import 'package:shop_app/features/home/presentation/views/widgets/header/custom_search.dart';

class CustomHomeHeader extends StatelessWidget {
  const CustomHomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: CustomSearch()),
        SizedBox(
          width: 15,
        ),
        CustomIconHeader(
          icon: Icons.shopping_cart_outlined,
        ),
        SizedBox(
          width: 15,
        ),
        CustomIconHeader(
          icon: Icons.notifications,
        ),
      ],
    );
  }
}
