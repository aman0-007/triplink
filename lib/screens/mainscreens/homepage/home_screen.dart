import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SectionTitle(title: 'Your Upcoming Trips'),
            UpcomingTripsSection(),
            SectionTitle(title: 'Adventures Near You'),
            GeoAdventuresSection(),
            SectionTitle(title: 'Discover Local Gems'),
            LocalExperiencesSection(),
          ],
        ),
      ),
    );
  }
}

/// **Reusable Section Title Widget**
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

/// **Upcoming Trips Section**
class UpcomingTripsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3, // Example items
        itemBuilder: (context, index) {
          return TripCard(
            title: 'Trip ${index + 1}',
            location: 'Destination',
            progress: 0.6,
          );
        },
      ),
    );
  }
}

/// **Trip Card Widget**
class TripCard extends StatelessWidget {
  final String title;
  final String location;
  final double progress;
  const TripCard({required this.title, required this.location, required this.progress, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(location),
            const SizedBox(height: 10),
            LinearProgressIndicator(value: progress),
          ],
        ),
      ),
    );
  }
}

/// **Geo-Adventures Section**
class GeoAdventuresSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return AdventureCard(
            title: 'Adventure ${index + 1}',
            distance: '5 km away',
          );
        },
      ),
    );
  }
}

/// **Adventure Card Widget**
class AdventureCard extends StatelessWidget {
  final String title;
  final String distance;
  const AdventureCard({required this.title, required this.distance, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(distance),
          ],
        ),
      ),
    );
  }
}

/// **Local Experiences Section**
class LocalExperiencesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
            (index) => LocalExperienceTile(
          title: 'Local Experience ${index + 1}',
          rating: '4.8/5 Rating',
        ),
      ),
    );
  }
}

/// **Local Experience Tile Widget**
class LocalExperienceTile extends StatelessWidget {
  final String title;
  final String rating;
  const LocalExperienceTile({required this.title, required this.rating, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.place, color: Colors.orange),
      title: Text(title),
      subtitle: Text(rating),
    );
  }
}
