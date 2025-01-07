import 'package:flutter/material.dart';

class TripLinkTheme {
  static final ColorScheme lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF4A90E2), // Sky BLue
      onPrimary: Colors.white,
      secondary: Color(0xFF50C878), // Emerald Green
      onSecondary: Colors.white,
      error: Color(0xFFD32F2F), // Red for errors
      onError: Colors.white,
      surface: Colors.white, // Default card/surface
      onSurface: Color(0xFF333333) // Dark Charcoal
  );

  static final ColorScheme darkColorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF4A90E2), // Sky BLue
      onPrimary: Colors.white,
      secondary: Color(0xFF50C878), // Emerald Green
      onSecondary: Colors.white,
      error: Color(0xFFD32F2F), // Red for errors
      onError: Colors.white,
      surface: Color(0xFF1E1E1E), // Darker Surface for Cards
      onSurface: Color(0xFFF5F5F5) // Light Grey
  );}