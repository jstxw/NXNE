import 'package:flutter/material.dart';
import '../widgets/festival_header.dart';
import '../Widgets/festival_navigation_tab.dart';
import '../Widgets/festival_date_scheduling.dart';
import '../Widgets/festival_bottom_navigation.dart';


class FestivalPlannerScreen extends StatelessWidget {
  const FestivalPlannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFFFF7EDB),
              const Color.fromRGBO(244, 198, 235, 1),
              const Color.fromRGBO(244, 198, 235, 0.8),
            ],
            stops: const [0.0, 0.2, 1.0],
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                const HeaderWidget(),
                const NavigationTabsWidget(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: const [
                          DateScheduleWidget(date: "11", suffix: "th"),
                          DateScheduleWidget(date: "12", suffix: "th"),
                          DateScheduleWidget(date: "13", suffix: "th"),
                          DateScheduleWidget(date: "14", suffix: "th"),
                          DateScheduleWidget(date: "15", suffix: "th"),
                          // Add extra space at bottom to ensure content isn't hidden behind bottom nav
                          SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomNavigationWidget(),
            ),
          ],
        ),
      ),
    );
  }
}