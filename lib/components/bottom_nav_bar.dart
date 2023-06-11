import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class MyBottomNavBar extends StatelessWidget {


  MyBottomNavBar({required this.onTabChange});

  void Function(int)? onTabChange;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        onTabChange:(value)=>onTabChange!(value),
        color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBackgroundColor: Colors.grey.shade300,
          tabBorderRadius: 26,
          tabBorder: Border.all(color: Colors.white),
          tabs: [
            GButton(icon: Icons.home,
              text: 'Shop',
            ),
            GButton(icon: Icons.shopping_bag_outlined,
              text: 'Cart',
            ),


          ]),
    );
  }
}
