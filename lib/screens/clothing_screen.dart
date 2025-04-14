import 'package:flutter/material.dart';
import '../Widgets/clothing_bottomnavbar.dart';
import '../Widgets/clothing_progress_bar.dart';
import '../Widgets/clothing_tab_selector.dart';
import '../Widgets/clothing_bottomnavbar.dart';

class ClothingScreen extends StatelessWidget {
  const ClothingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              children: [
                // Header section with pink background
                Container(
                  width: double.infinity,
                  color: const Color(0xFFFF7EDB),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      // Top row with logo and menu icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Logo section
                          Row(
                            children: [
                              // App icon container
                              Container(
                                width: 82,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromRGBO(255, 233, 68, 0.11),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 4,
                                      offset: Offset(0, 5),
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/app_icon.png', // Replace with actual asset path
                                    width: 39,
                                    height: 38,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              // App name image
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 4,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: Image.asset(
                                  'assets/images/app_name.png', // Replace with actual asset path
                                  width: 192,
                                  height: 49,
                                ),
                              ),
                            ],
                          ),
                          // Menu icon
                          Image.asset(
                            'assets/images/menu_icon.png', // Replace with actual asset path
                            width: 30,
                            height: 30,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      // User info section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Justin Wang',
                            style: TextStyle(
                              fontFamily: 'Athiti',
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          // XP progress and coins
                          Row(
                            children: [
                              // Progress bar
                              const SizedBox(
                                width: 191,
                                child: ProgressBar(progress: 0.45), // 86/191 ≈ 0.45
                              ),
                              const SizedBox(width: 8),
                              // XP text
                              const Text(
                                '200 Xp Until Next Level',
                                style: TextStyle(
                                  fontFamily: 'Audiowide',
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 8),
                              // Coins
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/coin.png', // Replace with actual asset path
                                    width: 30,
                                    height: 30,
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    '124',
                                    style: TextStyle(
                                      fontFamily: 'Audiowide',
                                      fontSize: 14,
                                      color: Color(0xFFDDDF4F),
                                      shadows: [
                                        BoxShadow(
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
                        ],
                      ),
                    ],
                  ),
                ),
                // Main content area
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        // Tab selector
                        const Padding(
                          padding: EdgeInsets.only(bottom: 24.0),
                          child: TabSelector(
                            tabs: ['Favorites', 'Apparels', 'Wish List'],
                            selectedIndex: 1,
                          ),
                        ),
                        // Image grid
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: GridView.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 16.0,
                              crossAxisSpacing: 16.0,
                              children: [
                                _buildImageItem('assets/images/item1.png'),
                                _buildImageItem('assets/images/item2.png'),
                                _buildImageItem('assets/images/item3.png'),
                                _buildImageItem('assets/images/item4.png'),
                                _buildImageItem('assets/images/item5.png'),
                                _buildImageItem('assets/images/item6.png'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Bottom navigation bar
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomNavBar(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageItem(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        height: 180,
        width: double.infinity,
      ),
    );
  }
}