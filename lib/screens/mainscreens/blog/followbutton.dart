import 'package:flutter/material.dart';

import '../../snackbar.dart';

class FollowButton extends StatefulWidget {
  final VoidCallback onPressed; // Callback when the button is pressed

  const FollowButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  _FollowButtonState createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool _isFollowing = false; // Track the follow state (following or not)

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isFollowing = !_isFollowing; // Toggle follow state
        });

        // Show the snackbar when clicked
        CustomSnackbar.showSnackbar(
          context,
          _isFollowing
              ? "You are now following the user!"
              : "You unfollowed the user.",
          backgroundColor: _isFollowing ? Colors.green : Colors.red,
          textColor: Colors.white,
          icon: _isFollowing ? Icons.check_circle : Icons.cancel,
          duration: Duration(seconds: 3),
        );

        // Trigger the passed callback function
        widget.onPressed();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300), // Smooth animation duration
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: _isFollowing ? Colors.blue : Colors.white, // Filled vs Border
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: _isFollowing ? Colors.blue : Colors.grey, // Border color
          ),
        ),
        child: Text(
          _isFollowing ? 'Following' : 'Follow', // Text changes on tap
          style: TextStyle(
            color: _isFollowing ? Colors.white : Colors.blue, // Text color
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
