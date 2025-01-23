import 'package:flutter/material.dart';

import '../../onboard/theme/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color buttonColor;
  final Color textColor;
  final double width; // Added width parameter

  CustomButton({
    required this.text,
    required this.onPressed,
    this.buttonColor = SplashColors.lightOrange,
    this.textColor = Colors.black, // Default text color is white
    this.width = double.infinity, // Default width set to full width
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13.0, bottom: 25),
      child: Container(
        width: width, // Set the width of the button
        child: ElevatedButton(
          onPressed: () => onPressed(),
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor, // Background color of the button
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            shadowColor: SplashColors.mediumBlue, // Shadow color
            elevation: 2, // Button elevation
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor, // Text color
              fontSize: 16,
              // fontWeight: FontWeight.bold, // Bold text
            ),
          ),
        ),
      ),
    );
  }
}
