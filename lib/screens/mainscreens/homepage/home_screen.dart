import 'package:flutter/material.dart';
import 'package:triplink/screens/mainscreens/homepage/home.dart';
import 'package:triplink/screens/mainscreens/homepage/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onSearch: (query) {
          print('Search query: $query');
        },
        onNotificationPressed: () {
          print('Notifications pressed');
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Home(),
          ],
        ),
      ),
    );
  }
}


