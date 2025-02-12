import 'package:flutter/material.dart';
import 'widgets/adventure.dart';
import 'widgets/localexp.dart';
import 'widgets/sectiontitle.dart';
import 'widgets/upcomingtrips.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final double buttonWidth = MediaQuery.of(context).size.width * 0.4;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SectionTitle(title: 'Your Upcoming Trips'),
          UpcomingTripsSection(),
          SectionTitle(title: 'Adventures Near You'),
          GeoAdventuresSection(),
          SectionTitle(title: 'Discover Local Gems'),
          LocalExperiencesSection(),
        ],
      ),
    );
  }
}
