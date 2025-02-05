import 'package:flutter/material.dart';
import 'package:triplink/screens/forgotpassword/forgotpassword.dart';
import 'package:triplink/screens/forgotpassword/resetheader.dart';
import 'package:triplink/screens/register/components/header.dart';
import 'package:triplink/screens/register/register.dart';

class ForgotpasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // No background color
        elevation: 0, // Remove shadow/elevation
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black), // Back arrow icon
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Column(
        children: [
          ResetHeader(),
          ForgotPassword(),
        ],
      ),
    );
  }
}
