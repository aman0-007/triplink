import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -50,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 48,
          backgroundImage: NetworkImage('https://t3.ftcdn.net/jpg/02/43/12/34/240_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'), // Replace with your profile image URL
        ),
      ),
    );
  }
}