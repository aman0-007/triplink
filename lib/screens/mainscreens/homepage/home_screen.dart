import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TripLink Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSectionTitle(context, 'Your Upcoming Trips'),
            _buildUpcomingTrips(),
            _buildSectionTitle(context, 'Adventures Near You'),
            _buildGeoAdventures(),
            _buildSectionTitle(context, 'Discover Local Gems'),
            _buildLocalExperiences(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'Challenges'),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: Theme.of(context).textTheme.displayMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildUpcomingTrips() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3, // Example items
        itemBuilder: (context, index) {
          return _tripCard('Trip ${index + 1}', 'Destination', '60% planned');
        },
      ),
    );
  }

  Widget _tripCard(String title, String location, String progress) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(location),
            SizedBox(height: 10),
            LinearProgressIndicator(value: 0.6),
          ],
        ),
      ),
    );
  }

  Widget _buildGeoAdventures() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return _adventureCard('Adventure ${index + 1}', '5 km away');
        },
      ),
    );
  }

  Widget _adventureCard(String title, String distance) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(distance),
          ],
        ),
      ),
    );
  }

  Widget _buildLocalExperiences() {
    return Column(
      children: List.generate(
        3,
            (index) => ListTile(
          leading: Icon(Icons.place, color: Colors.orange),
          title: Text('Local Experience ${index + 1}'),
          subtitle: Text('4.8/5 Rating'),
        ),
      ),
    );
  }
}
