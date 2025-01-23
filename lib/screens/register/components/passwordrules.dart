import 'package:flutter/material.dart';

class PasswordRulesButton extends StatefulWidget {
  @override
  _PasswordRulesButtonState createState() => _PasswordRulesButtonState();
}

class _PasswordRulesButtonState extends State<PasswordRulesButton> {
  bool _isMessageVisible = false; // Track the visibility of the message

  // Function to toggle the visibility of the password rules
  void _togglePasswordRules() {
    setState(() {
      _isMessageVisible = !_isMessageVisible; // Toggle visibility
    });

    // Hide the message after 7 seconds
    if (_isMessageVisible) {
      Future.delayed(Duration(seconds: 7), () {
        setState(() {
          _isMessageVisible = false; // Hide the message after 7 seconds
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: _togglePasswordRules, // Toggle the message on icon click
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.help_outline,
              color: Colors.grey[500],
              size: 27,
            ),
          ),
        ),
        if (_isMessageVisible)
          Positioned(
            left: 35, // Adjust this for proper positioning relative to the icon
            top: 0, // Adjust this for positioning of the message above or below the icon
            child: AnimatedOpacity(
              opacity: _isMessageVisible ? 1.0 : 0.0, // Fade-in and fade-out effect
              duration: Duration(seconds: 1),
              child: Material(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('• Must be at least 8 characters long'),
                    Text('• Must contain at least one uppercase letter'),
                    Text('• Must contain at least one number'),
                    Text('• Must contain at least one special character'),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
