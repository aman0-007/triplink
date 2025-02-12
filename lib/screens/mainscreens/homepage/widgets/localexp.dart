import 'package:flutter/material.dart';

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
