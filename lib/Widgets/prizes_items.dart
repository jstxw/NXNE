import 'package:flutter/material.dart';

class OfferItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int points;
  final VoidCallback onExchange;

  const OfferItem({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.points,
    required this.onExchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'Audiowide',
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            letterSpacing: -1.2,
          ),
        ),

        const SizedBox(height: 7),

        // Points row
        Row(
          children: [
            // Coin icon
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/335b1dea40cc860c308721a8b27828525dea14bc?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(width: 8),

            // Points value
            Text(
              points.toString(),
              style: const TextStyle(
                fontFamily: 'Audiowide',
                fontSize: 20,
                color: Color(0xFFDDDF4F),
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

        const SizedBox(height: 5),

        // Exchange button
        GestureDetector(
          onTap: onExchange,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFF892626),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 1),
            child: const Text(
              'Exchange',
              style: TextStyle(
                fontFamily: 'Audiowide',
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                letterSpacing: -1.2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}