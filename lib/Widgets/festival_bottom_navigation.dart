import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: BoxDecoration(
        color: const Color(0xFFF4C6EB), // Using the closest color from the design
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10,
            spreadRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavIcon('assets/images/menu_nav.png'), // Replace with actual asset path
          _buildNavIcon('assets/images/shirt.png'), // Replace with actual asset path
          _buildNavIcon('assets/images/profile_nav.png'), // Replace with actual asset path
          _buildNavIcon('assets/images/trophy.png'), // Replace with actual asset path
        ],
      ),
    );
  }

  Widget _buildNavIcon(String iconPath) {
    return Image.asset(
      iconPath,
      width: 48,
      height: 48,
    );
  }
}