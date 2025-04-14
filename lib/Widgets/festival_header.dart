import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
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
      child: Column(
        children: [
          Container(
            width: 192,
            height: 49,
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
            margin: const EdgeInsets.only(bottom: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/logo.png', // Replace with actual asset path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Profile section
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 233, 68, 0.11),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      spreadRadius: 2,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/profile.png', // Replace with actual asset path
                      width: 39,
                      height: 38,
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Justin Wang',
                      style: TextStyle(
                        fontFamily: 'Athiti',
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              // XP and stars section
              Row(
                children: [
                  Column(
                    children: [
                      const Text(
                        '200 Xp Until Next Level',
                        style: TextStyle(
                          fontFamily: 'Audiowide',
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: 181,
                        height: 7,
                        decoration: BoxDecoration(
                          color: const Color(0xFFC9C8C1),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              width: 86,
                              height: 7,
                              decoration: BoxDecoration(
                                color: const Color(0xFFC7B213),
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/star.png', // Replace with actual asset path
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        '124',
                        style: TextStyle(
                          fontFamily: 'Audiowide',
                          fontSize: 20,
                          color: Color(0xFFDDDF4F),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Menu icon
              Image.asset(
                'assets/images/menu.png', // Replace with actual asset path
                width: 30,
                height: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}