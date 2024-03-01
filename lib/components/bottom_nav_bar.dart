import "package:flutter/material.dart";
import "package:google_nav_bar/google_nav_bar.dart";

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          iconSize: 26,
          haptic: true,
          gap: 8,
          color: Colors.grey[400],
          activeColor: Colors.grey[700],
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "shop",
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: "cart",
            ),
          ]),
    );
  }
}
