import 'package:flutter/material.dart';

class MyTripsScreen extends StatelessWidget {
  const MyTripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Trips'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Planned'),
              Tab(text: 'Active'),
              Tab(text: 'Past'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Planned Trips')),
            Center(child: Text('Active Trips')),
            Center(child: Text('Past Trips')),
          ],
        ),
      ),
    );
  }
}