import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (selectedIndex) => setState(() {
              this.selectedIndex = selectedIndex;
            }),
        showSelectedLabels: false,
        selectedIconTheme: const IconThemeData(size: 32),
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Fav",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ]);
  }
}
