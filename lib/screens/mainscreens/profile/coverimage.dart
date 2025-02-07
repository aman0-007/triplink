import 'package:flutter/material.dart';

class CoverImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://via.placeholder.com/1500x500'), // Replace with your cover image URL
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}