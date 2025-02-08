import 'package:flutter/material.dart';

import '../../snackbar.dart';

class SaveButton extends StatefulWidget {
  final VoidCallback onPressed; // Callback when the button is pressed

  const SaveButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  _SaveButtonState createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  bool _isSaved = false; // Track the state of the button (saved or not)

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: AnimatedSwitcher(
        duration: Duration(milliseconds: 300), // Smooth animation for icon change
        child: Icon(
          _isSaved ? Icons.bookmark : Icons.bookmark_border, // Filled vs Outlined icon
          key: ValueKey<bool>(_isSaved),
          color: _isSaved ? Colors.orange : Colors.grey, // Color change on tap
        ),
      ),
      onPressed: () {
        setState(() {
          _isSaved = !_isSaved; // Toggle the save state
        });

        // Show Snackbar when clicked
        CustomSnackbar.showSnackbar(
          context,
          _isSaved
              ? "Item saved successfully!"
              : "Item unsaved.",
          backgroundColor: _isSaved ? Colors.green : Colors.red,
          textColor: Colors.white,
          icon: _isSaved ? Icons.check_circle : Icons.error,
          duration: Duration(seconds: 3),
        );

        // Call the passed onPressed callback as well
        widget.onPressed();
      },
    );
  }
}
