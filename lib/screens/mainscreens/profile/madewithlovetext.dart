import 'package:flutter/material.dart';

class MadeWithLoveText extends StatelessWidget {
  final Color textColor;
  final double fontSize;

  const MadeWithLoveText({
    Key? key,
    this.textColor = Colors.redAccent, // Default color
    this.fontSize = 20, // Default size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Made with ❤️ for the Travellers',
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'cursive', // Uses built-in cursive font
        fontWeight: FontWeight.w500,
        color: textColor,
      ),
      textAlign: TextAlign.center,
    );
  }
}
