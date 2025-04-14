import 'package:flutter/material.dart';

class OffersHeader extends StatelessWidget {
  const OffersHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFF7EDB),
      padding: const EdgeInsets.fromLTRB(80, 20, 37, 58),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo image
          Container(
            width: 192,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/eb3b3edeab31577743c4a4515f45dc69cda5f959?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
                fit: BoxFit.contain,
                width: 192,
              ),
            ),
          ),

          // Menu icon
          Container(
            margin: const EdgeInsets.only(top: 8),
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
              'https://cdn.builder.io/api/v1/image/assets/TEMP/28e0bd121a0ea86d63c3d9897764e9dfc9b6b770?placeholderIfAbsent=true&apiKey=ae12823f57ec4ff49751fd9db2868c75',
              width: 30,
              height: 30,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}