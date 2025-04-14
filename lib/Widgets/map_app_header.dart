import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 127,
      decoration: BoxDecoration(
        color: const Color(0xFFFF7EDB),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // NXNE Logo
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/bb1aa8248d71cbc4a60932d4350cbcb16b008801',
              width: 192,
              height: 49,
              fit: BoxFit.contain,
            ),
          ),

          // Menu Icon
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/d8f32a812848959d5a0e004176fdc723f27bf416',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}