import 'package:flutter/material.dart';
import '../../../onboard/theme/colors.dart'; // Ensure this import points to your colors file

class ContactSupportWidget extends StatefulWidget {
  @override
  _ContactSupportWidgetState createState() => _ContactSupportWidgetState();
}

class _ContactSupportWidgetState extends State<ContactSupportWidget> {
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
                  Icon(Icons.support_agent, color: SplashColors.brightOrange, size: 24),
                  SizedBox(width: 8),
                  Text(
                    "Contact Support",
                    style: TextStyle(
                      color: SplashColors.darkBlue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Support Tiles
            _buildSupportTile(
              icon: Icons.chat,
              title: "In-App Chat Support",
              subtitle: "Available 9 AM–6 PM, Monday–Friday",
              onTap: () {
                // Navigate to chat support
              },
            ),
            _buildDivider(),
            _buildSupportTile(
              icon: Icons.email,
              title: "Email Support",
              subtitle: "support@triplink.com",
              onTap: () {
                // Open email client
              },
            ),
            _buildDivider(),
            _buildSupportTile(
              icon: Icons.phone,
              title: "Phone Support",
              subtitle: "1-800-TRIPLINK",
              onTap: () {
                // Open phone dialer
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSupportTile({required IconData icon, required String title, required String subtitle, required VoidCallback onTap}) {
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
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: SplashColors.mediumBlue.withOpacity(0.8),
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