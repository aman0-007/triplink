import 'package:flutter/material.dart';
import 'package:triplink/screens/mainscreens/dashboard/widgets/adventurecard.dart';
import 'package:triplink/screens/mainscreens/dashboard/widgets/tripcard.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TripLink'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () => _openNotifications(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            _buildSearchBar(),
            const SizedBox(height: 20),
            // Upcoming Trips
            _buildSectionTitle('Upcoming Trips'),
            _buildUpcomingTrips(),
            const SizedBox(height: 20),
            // Geo-Adventures Nearby
            _buildSectionTitle('Adventures Near You'),
            _buildGeoAdventures(),
            const SizedBox(height: 20),
            // Recommended Experiences
            _buildSectionTitle('Local Gems'),
            _buildRecommendedExperiences(),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search destinations, activities, or users...',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildUpcomingTrips() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3, // Replace with real data
        itemBuilder: (context, index) {
          return const TripCard(); // Custom reusable widget
        },
      ),
    );
  }

  Widget _buildGeoAdventures() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5, // Replace with real data
        itemBuilder: (context, index) {
          return const AdventureCard(); // Custom reusable widget
        },
      ),
    );
  }

  Widget _buildRecommendedExperiences() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4, // Replace with real data
      itemBuilder: (context, index) {
        return _buildExperienceItem();
      },
    );
  }

  Widget _buildExperienceItem() {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://picsum.photos/80', // Replace with actual image URL
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        title: const Text('Hidden Café in Paris'),
        subtitle: const Text('⭐ 4.8/5 • #Foodie #Budget'),
        trailing: IconButton(
          icon: const Icon(Icons.bookmark_add_outlined),
          onPressed: () {},
        ),
      ),
    );
  }

  void _openNotifications(BuildContext context) {
    // Navigate to notifications screen
  }
}