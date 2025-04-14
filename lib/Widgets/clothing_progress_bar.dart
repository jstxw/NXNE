import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double progress;

  const ProgressBar({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 191,
      height: 7,
      child: Stack(
        children: [
          // Background bar
          Positioned(
            left: 10,
            child: Container(
              width: 181,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xFFC9C8C1),
              ),
            ),
          ),
          // Dark yellow progress
          Positioned(
            left: 0,
            child: Container(
              width: 86,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xFFC7B213),
              ),
            ),
          ),
          // Light yellow progress overlay
          Positioned(
            left: 11,
            child: Container(
              width: 75,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xFFEED72B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}