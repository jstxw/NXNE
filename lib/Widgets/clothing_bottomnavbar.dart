import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 66,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        color: const Color(0x0fff44cc),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 10,
            offset: Offset(0, 4),
            spreadRadius: 20,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem('assets/images/nav_icon1.png'),
          _buildNavItem('assets/images/nav_icon2.png'),
          _buildNavItem('assets/images/nav_icon3.png'),
          _buildNavItem('assets/images/nav_icon4.png'),
        ],
      ),
    );
  }

  Widget _buildNavItem(String imagePath) {
    return Image.asset(
      imagePath,
      width: 48,
      height: 48,
    );
  }
}