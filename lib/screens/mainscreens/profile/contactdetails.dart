import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 3.0),
              child: Text(
                'Contact Details',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey[800],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email, color: Colors.blueGrey[400]),
              title: Text(
                'john.doe@example.com',
                style: TextStyle(color: Colors.blueGrey[600]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                height: 1,
                thickness: 2,
                color: Colors.grey[300],
              ),
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.blueGrey[400]),
              title: Text(
                '+1 234 567 890',
                style: TextStyle(color: Colors.blueGrey[600]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                height: 1,
                thickness: 2,
                color: Colors.grey[300],
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blueGrey[400]),
              title: Text(
                'New York, USA',
                style: TextStyle(color: Colors.blueGrey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}