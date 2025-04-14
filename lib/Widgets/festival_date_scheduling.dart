import 'package:flutter/material.dart';

class DateScheduleWidget extends StatelessWidget {
  final String date;
  final String suffix;

  const DateScheduleWidget({
    super.key,
    required this.date,
    required this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth <= 640;

    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: TextStyle(
              fontFamily: 'Crimson Text',
              fontSize: isSmallScreen ? 40 : 50,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              suffix,
              style: TextStyle(
                fontFamily: 'Crimson Text',
                fontSize: isSmallScreen ? 16 : 20,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              children: [
                _buildTimeSlot(
                  'assets/images/morning.png', // Replace with actual asset path
                  isSmallScreen,
                ),
                const SizedBox(height: 15),
                _buildTimeSlot(
                  'assets/images/afternoon.png', // Replace with actual asset path
                  isSmallScreen,
                ),
                const SizedBox(height: 15),
                _buildTimeSlot(
                  'assets/images/evening.png', // Replace with actual asset path
                  isSmallScreen,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSlot(String iconPath, bool isSmallScreen) {
    return Row(
      children: [
        Image.asset(
          iconPath,
          width: 24,
          height: 24,
        ),
        const SizedBox(width: 15),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: isSmallScreen ? 12 : 16,
              horizontal: isSmallScreen ? 16 : 24,
            ),
            decoration: BoxDecoration(
              color: const Color(0xFFF4C6EB),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Text(
              'Select An Artist',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: isSmallScreen ? 14 : 16,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ),
      ],
    );
  }
}