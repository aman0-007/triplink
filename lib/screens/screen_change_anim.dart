import 'package:flutter/material.dart';

// Enum for different types of transitions
enum TransitionType {
  fade,
  slide,
  slideFromLeft,
  slideFromRight,
  slideFromTop,
  slideFromBottom,
  scale,
  rotate
}

class AnimatedPageTransition extends PageRouteBuilder {
  final Widget page;  // The page you're navigating to
  final TransitionType transitionType;  // The type of transition you want (fade, slide, etc.)

  AnimatedPageTransition({
    required this.page,
    this.transitionType = TransitionType.fade, // Default to fade transition
  }) : super(
    pageBuilder: (context, animation, secondaryAnimation) {
      return page;  // The target page widget
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      switch (transitionType) {
        case TransitionType.fade:
          return _buildFadeTransition(animation, secondaryAnimation, child);
        case TransitionType.slide:
          return _buildSlideTransition(animation, secondaryAnimation, child, Offset(0.0, 1.0)); // Slide from bottom
        case TransitionType.slideFromLeft:
          return _buildSlideTransition(animation, secondaryAnimation, child, Offset(-1.0, 0.0)); // Slide from left
        case TransitionType.slideFromRight:
          return _buildSlideTransition(animation, secondaryAnimation, child, Offset(1.0, 0.0)); // Slide from right
        case TransitionType.slideFromTop:
          return _buildSlideTransition(animation, secondaryAnimation, child, Offset(0.0, -1.0)); // Slide from top
        case TransitionType.slideFromBottom:
          return _buildSlideTransition(animation, secondaryAnimation, child, Offset(0.0, 1.0)); // Slide from bottom
        case TransitionType.scale:
          return _buildScaleTransition(animation, secondaryAnimation, child);
        case TransitionType.rotate:
          return _buildRotateTransition(animation, secondaryAnimation, child);
        default:
          return child;
      }
    },
  );

  // Fade transition helper function (handles both entry and exit)
  static Widget _buildFadeTransition(Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    var fadeIn = Tween(begin: 0.0, end: 1.0).animate(animation);
    var fadeOut = Tween(begin: 1.0, end: 0.0).animate(secondaryAnimation);

    return FadeTransition(
      opacity: fadeIn, // For the page in animation
      child: FadeTransition(
        opacity: fadeOut, // For the page out animation
        child: child,
      ),
    );
  }

  // Slide transition helper function (handles both entry and exit)
  static Widget _buildSlideTransition(Animation<double> animation, Animation<double> secondaryAnimation, Widget child, Offset begin) {
    const curve = Curves.easeInOut;

    // For page entry
    var tween = Tween(begin: begin, end: Offset.zero).chain(CurveTween(curve: curve));
    var offsetAnimation = animation.drive(tween);

    // For page exit
    var slideOut = Tween(begin: Offset.zero, end: begin).chain(CurveTween(curve: curve));
    var slideOutAnimation = secondaryAnimation.drive(slideOut);

    return Stack(
      children: [
        SlideTransition(position: slideOutAnimation, child: child), // For page out (exit)
        SlideTransition(position: offsetAnimation, child: child), // For page in (entry)
      ],
    );
  }

  // Scale transition helper function (handles both entry and exit)
  static Widget _buildScaleTransition(Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    const curve = Curves.easeInOut;

    // For page entry (scale in)
    var scaleIn = Tween(begin: 0.0, end: 1.0).chain(CurveTween(curve: curve)).animate(animation);

    // For page exit (scale out)
    var scaleOut = Tween(begin: 1.0, end: 0.0).chain(CurveTween(curve: curve)).animate(secondaryAnimation);

    return Stack(
      children: [
        ScaleTransition(scale: scaleOut, child: child), // For page out (exit)
        ScaleTransition(scale: scaleIn, child: child), // For page in (entry)
      ],
    );
  }

  // Rotate transition helper function (handles both entry and exit)
  static Widget _buildRotateTransition(Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    const curve = Curves.easeInOut;

    // For page entry (rotate in)
    var rotateIn = Tween(begin: 0.0, end: 1.0).chain(CurveTween(curve: curve)).animate(animation);

    // For page exit (rotate out)
    var rotateOut = Tween(begin: 1.0, end: 0.0).chain(CurveTween(curve: curve)).animate(secondaryAnimation);

    return Stack(
      children: [
        RotationTransition(turns: rotateOut, child: child), // For page out (exit)
        RotationTransition(turns: rotateIn, child: child), // For page in (entry)
      ],
    );
  }
}
