import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Mybottombar extends StatelessWidget {
  const Mybottombar({super.key, this.pageChanged});
  final Function(int)? pageChanged;

  @override
  Widget build(BuildContext context) {
    return GNav(
      iconSize: 33,
      mainAxisAlignment: MainAxisAlignment.center,
      tabs: [
        GButton(
          iconActiveColor: Colors.brown,
          iconColor: Colors.grey.shade700,
          textColor: Colors.brown,
          gap: 8,
          icon: Icons.home_filled,
          text: "Home",
        ),
        GButton(
          iconActiveColor: Colors.brown,
          iconColor: Colors.grey.shade700,
          textColor: Colors.brown,
          gap: 8,
          icon: Icons.shopping_bag_outlined,
          text: "Card",
        ),
      ],
      onTabChange: pageChanged,
    );
  }
}
