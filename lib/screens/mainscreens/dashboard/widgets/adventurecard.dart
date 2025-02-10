import 'package:flutter/material.dart';

class AdventureCard extends StatelessWidget {
  const AdventureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.landscape, size: 40, color: Colors.green),
          const SizedBox(height: 8),
          const Text(
            'Hike Mount Vista',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text('2 km away • 3h'),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 12),
            ),
            child: const Text('Start'),
          ),
        ],
      ),
    );
  }
}