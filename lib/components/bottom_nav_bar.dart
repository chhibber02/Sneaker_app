import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: GNav(
          color: Colors.grey[400],
            activeColor: Colors.grey.shade700,
            tabActiveBorder: Border.all(color: Colors.white),
            tabBackgroundColor: Colors.grey.shade100,
            mainAxisAlignment: MainAxisAlignment.center,
            onTabChange: (value) => onTabChange!(value),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'shop',
              ),

              GButton(
                  icon: Icons.shopping_bag_rounded,
                text: 'Cart',
              ),
            ],
        ),
      ),
    );
  }
}
