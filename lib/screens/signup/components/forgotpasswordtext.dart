import 'package:flutter/material.dart';
import 'package:triplink/screens/forgotpassword/forgotpassword.dart';

import '../../forgotpassword/forgotpassword_screen.dart';
import '../../register/register_screen.dart';
import '../../screen_change_anim.dart';

class ForgotPasswordText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children:  [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              AnimatedPageTransition(
                page: ForgotpasswordScreen(),
                transitionType: TransitionType.fade,
              ),
            );
          },
          child: Text(
            'forgot password?',
            style: TextStyle(
              fontSize: 14, // Larger size for main title
              fontWeight: FontWeight.normal,
              color: Colors.blueAccent, // Black text color
            ),
          ),
        ),
      ],
    );
  }
}
