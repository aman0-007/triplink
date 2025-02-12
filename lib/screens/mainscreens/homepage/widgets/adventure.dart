import 'package:flutter/material.dart';

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
