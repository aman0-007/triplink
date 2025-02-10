// In main.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:triplink/screens/mainscreens/dashboard/dashboard.dart';
import 'package:triplink/screens/mainscreens/dashboard/screens/mytrips.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const DashboardScreen(),
    const MyTripsScreen(),
    const ExploreScreen(),
    const ChallengesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.luggage), label: 'My Trips'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Challenges',
          ),
        ],
      ),
    );
  }
}