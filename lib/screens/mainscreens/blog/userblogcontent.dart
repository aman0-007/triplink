import 'package:flutter/material.dart';
import 'package:triplink/screens/mainscreens/blog/followbutton.dart';
import 'blogsavebutton.dart';
import '../../onboard/theme/colors.dart';

class UserBlogContent extends StatelessWidget {
  // Dummy Data
  final String title = 'How to Get Started with Flutter';
  final String description = 'A beginner’s guide to starting your Flutter development journey.';
  final String imageUrl = 'https://images.unsplash.com/photo-1501555088652-021faa106b9b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWR2ZW50dXJlfGVufDB8fDB8fHww';
  final String personImageUrl = 'https://randomuser.me/api/portraits/men/75.jpg';
  final String personName = 'John Doe';
  final String date = '2025-02-08';
  final String fullDescription = '''
    Flutter is an open-source UI software development kit created by Google. It allows developers to create beautiful, fast, and cross-platform apps for Android, iOS, Web, and desktop. 

    In this article, we will explore the basics of Flutter, how to set up your development environment, and how to start building apps using Flutter. By the end of this guide, you'll have a solid understanding of how to get started with Flutter and how to build your first app.
    
    First, you need to install Flutter SDK and set up your editor. Flutter works with multiple IDEs such as Android Studio, Visual Studio Code, and IntelliJ IDEA.
    
    Once your setup is complete, you can create your first Flutter app using the following command:
    flutter create my_first_app
    
    The Flutter framework uses widgets as the building blocks of the UI. Widgets are reusable components that help you create the UI and logic for your application. 
    
    Let's start building your first app!
  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey, // Greyish color for the app bar
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(), // Close the current page
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Blog Title and Description with Save Button
            Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: SplashColors.mediumBlue,
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      color: SplashColors.darkBlue,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(width: 8),
                SaveButton(  // Use the SaveButton widget here
                  onPressed: () {
                    // Save button functionality here
                  },
                ),
              ],
            ),
            SizedBox(height: 16),

            // Blog Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),

            // Person Info (Image, Name, Date, Follow Button)
            Row(
              children: [
                ClipOval(
                  child: Image.network(
                    personImageUrl,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      personName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: SplashColors.mediumBlue,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 14,
                        color: SplashColors.lightBlue.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                FollowButton( // Use the FollowButton widget here
                  onPressed: () {
                    // Handle additional follow logic if needed
                  },
                ),
              ],
            ),
            SizedBox(height: 16),

            // Full Blog Description
            Text(
              fullDescription,
              style: TextStyle(
                fontSize: 16,
                color: SplashColors.darkBlue,
              ),
            ),
            SizedBox(height: 16),

            // Comment Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Comment button functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: SplashColors.brightOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Comment',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
