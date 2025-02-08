import 'package:flutter/material.dart';
import '../../../themes.dart';
import '../../onboard/theme/colors.dart';
import '../../snackbar.dart'; // Ensure this import is correct

class FeedbackFormPage extends StatefulWidget {
  @override
  _FeedbackFormPageState createState() => _FeedbackFormPageState();
}

class _FeedbackFormPageState extends State<FeedbackFormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Feedback",
          style: TextStyle(
            color: SplashColors.darkBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: SplashColors.darkBlue),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              SplashColors.lightBlue.withOpacity(0.2),
              SplashColors.brightOrange.withOpacity(0.2),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: kToolbarHeight + 20),
              Text(
                "We would love to hear from you!",
                style: TextStyle(
                  color: SplashColors.darkBlue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Your feedback helps us improve.",
                style: TextStyle(
                  color: SplashColors.mediumBlue.withOpacity(0.8),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 24.0),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                      spreadRadius: 3,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: _buildFeedbackForm(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeedbackForm(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter your name",
            hintStyle: TextStyle(color: SplashColors.mediumBlue),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: SplashColors.mediumBlue.withOpacity(0.5)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: SplashColors.brightOrange),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter your email",
            hintStyle: TextStyle(color: SplashColors.mediumBlue),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: SplashColors.mediumBlue.withOpacity(0.5)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: SplashColors.brightOrange),
            ),
          ),
        ),
        SizedBox(height: 16.0),
        TextFormField(
          maxLines: 5,
          decoration: InputDecoration(
            hintText: "Write your feedback here...",
            hintStyle: TextStyle(color: SplashColors.mediumBlue),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: SplashColors.mediumBlue.withOpacity(0.5)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(color: SplashColors.brightOrange),
            ),
          ),
        ),
        SizedBox(height: 24.0),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              CustomSnackbar.showSnackbar(
                context,
                "Thank you for your feedback!",
                backgroundColor: Colors.green,
                textColor: Colors.white,
                icon: Icons.check_circle, // Added icon
                duration: Duration(seconds: 3),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: SplashColors.brightOrange,
              padding: EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              shadowColor: SplashColors.brightOrange.withOpacity(0.4),
            ),
            child: Text(
              "Submit Feedback",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
