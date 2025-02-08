import 'package:flutter/material.dart';
import 'package:triplink/screens/mainscreens/help_support/feedback.dart';
import 'package:triplink/screens/screen_change_anim.dart';
import '../../../onboard/theme/colors.dart'; // Ensure this import points to your colors file

class AdditionalResourcesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0, right: 16.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(19.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 19,
              spreadRadius: 1,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headline
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Icon(Icons.library_books, color: SplashColors.brightOrange, size: 24),
                  SizedBox(width: 8),
                  Text(
                    "Additional Resources",
                    style: TextStyle(
                      color: SplashColors.darkBlue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Resource Tiles
            _buildResourceTile(
              icon: Icons.video_library,
              title: "Video Tutorials",
              onTap: () {
                // Navigate to video tutorials
              },
            ),
            _buildDivider(),
            _buildResourceTile(
              icon: Icons.article,
              title: "User Guides",
              onTap: () {
                // Navigate to user guides
              },
            ),
            _buildDivider(),
            _buildResourceTile(
              icon: Icons.feedback,
              title: "Feedback Form",
              onTap: () {
                Navigator.push(
                  context,
                  AnimatedPageTransition(page: FeedbackFormPage(), transitionType: TransitionType.slideFade),
                );
              },
            ),
            _buildDivider(),
            _buildResourceTile(
              icon: Icons.settings,
              title: "System Status Page",
              onTap: () {
                // Navigate to system status page
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResourceTile({required IconData icon, required String title, required VoidCallback onTap}) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: SplashColors.lightBlue.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: SplashColors.brightOrange, // Use brightOrange for the border
            width: 1.5, // Adjust border thickness
          ),
        ),
        child: Icon(icon, color: SplashColors.mediumBlue),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: SplashColors.darkBlue,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: onTap,
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Divider(
        color: SplashColors.mediumBlue.withOpacity(0.4),
        thickness: 0.8,
      ),
    );
  }
}