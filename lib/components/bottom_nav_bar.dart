import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const MyBottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(
          color: Colors.white,
        ),
        tabBackgroundColor: Colors.grey.shade100,
        tabBorderRadius: 16,
        onTabChange: onTabChange,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
