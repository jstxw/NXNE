import 'package:flutter/material.dart';

class OffersNavigation extends StatelessWidget {
  const OffersNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFD3D3CB),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Offers text
          const Text(
            'Offers',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w400,
              letterSpacing: -2,
              shadows: [
                Shadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),

          // Navigation options
          Row(
            children: [
              // All button (selected)
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(2, 4),
                      spreadRadius: 5,
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 1),
                child: const Text(
                  'All',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -2,
                  ),
                ),
              ),

              const SizedBox(width: 12),

              // Discounts option
              const Text(
                'Discounts',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -2,
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}