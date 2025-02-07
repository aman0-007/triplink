import 'package:flutter/material.dart';

class PersonalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20), // Circular border
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(0, 3), // Shadow position
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 28), // Adjust this value to match the overlap
            // Name (Centered)
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 6.0),
              child: Center(
                child: Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[800],
                  ),
                ),
              ),
            ),
            // Email
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Center(
                child: Text(
                  'john.doe@example.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey[600],
                  ),
                ),
              ),
            ),
            // Divider
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                height: 1,
                thickness: 2,
                color: Colors.grey[300],
              ),
            ),
            // About Me
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[800],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'I am a passionate software engineer with experience in building mobile and web applications.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey[600],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}