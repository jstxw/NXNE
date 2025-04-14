import 'package:flutter/material.dart';

class TabSelector extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final Function(int)? onTabSelected;

  const TabSelector({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 403),
      height: 38,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFD3D3CB),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            blurRadius: 4,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildTabItem(0, tabs[0]),
            const SizedBox(width: 32),
            _buildTabItem(1, tabs[1]),
            const SizedBox(width: 32),
            _buildTabItem(2, tabs[2]),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(int index, String title) {
    final bool isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: () {
        if (onTabSelected != null) {
          onTabSelected!(index);
        }
      },
      child: isSelected
          ? Container(
              width: 157,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 6,
                    offset: Offset(2, 4),
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            )
          : Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
              ),
            ),
    );
  }
}