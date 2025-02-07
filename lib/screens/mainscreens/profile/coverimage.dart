import 'package:flutter/material.dart';

class CoverImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://t3.ftcdn.net/jpg/01/21/00/84/240_F_121008469_o4lvIDitZB42YfGdrDJlxEPvioY2aaGF.jpg'), // Replace with your cover image URL
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}