import 'package:flutter/material.dart';

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

