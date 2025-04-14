import 'package:flutter/material.dart';
import '../Widgets/map_app_header.dart';
import '../Widgets/map_bottom_navigation.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppHeader(),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Map background
                Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/TEMP/f812d4cc966193167dbcecba8013f4d2c0191540',
                  fit: BoxFit.cover,
                ),

                // Location pins
                Positioned(
                  top: 170,
                  left: 166,
                  child: Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/97d71e874f41d1ce98c69be0f27cdca07a4aac9c',
                    width: 24,
                    height: 24,
                  ),
                ),

                Positioned(
                  top: 170,
                  right: 108,
                  child: Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/97d71e874f41d1ce98c69be0f27cdca07a4aac9c',
                    width: 24,
                    height: 24,
                  ),
                ),

                Positioned(
                  top: 373,
                  left: 28,
                  child: Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/97d71e874f41d1ce98c69be0f27cdca07a4aac9c',
                    width: 24,
                    height: 24,
                  ),
                ),

                Positioned(
                  top: 468,
                  left: 202,
                  child: Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/97d71e874f41d1ce98c69be0f27cdca07a4aac9c',
                    width: 24,
                    height: 24,
                  ),
                ),

                Positioned(
                  top: 674,
                  right: 98,
                  child: Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/97d71e874f41d1ce98c69be0f27cdca07a4aac9c',
                    width: 24,
                    height: 24,
                  ),
                ),

                Positioned(
                  top: 698,
                  left: 24,
                  child: Image.network(
                    'https://cdn.builder.io/api/v1/image/assets/TEMP/97d71e874f41d1ce98c69be0f27cdca07a4aac9c',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
          const BottomNavigation(),
        ],
      ),
    );
  }
}