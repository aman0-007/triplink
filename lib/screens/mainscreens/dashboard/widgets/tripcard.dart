import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  const TripCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
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
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://picsum.photos/200', // Replace with trip image
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Japan 2023',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text('Nov 15-30, 2023 • 3 friends joining'),
          const SizedBox(height: 8),
          const LinearProgressIndicator(
            value: 0.6,
            backgroundColor: Colors.grey,
            color: Colors.blue,
          ),
          const SizedBox(height: 4),
          const Text('60% planned'),
        ],
      ),
    );
  }
}