import 'package:flutter/material.dart';

import '../../../onboard/theme/colors.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String) onSearch;

  const SearchBarWidget({required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "How can we help you?",
          hintStyle: TextStyle(color: SplashColors.mediumBlue.withOpacity(0.6)),
          prefixIcon: Icon(Icons.search, color: SplashColors.mediumBlue.withOpacity(0.6)),
          filled: true,
          fillColor: Colors.white.withOpacity(0.9),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none, // Remove the default border
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: SplashColors.lightBlue.withOpacity(0.3), width: 1.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: SplashColors.brightOrange, width: 2.0),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
        ),
        style: TextStyle(color: SplashColors.darkBlue, fontSize: 16),
        onChanged: onSearch,
      ),
    );
  }
}
