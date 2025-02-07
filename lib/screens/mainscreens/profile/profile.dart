import 'package:flutter/material.dart';

import 'contactdetails.dart';
import 'coverimage.dart';
import 'personaldetails.dart';
import 'profileimage.dart';

class Profile extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double buttonWidth = MediaQuery.of(context).size.width * 0.4;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CoverImage(),
            ProfileImage(),
            PersonalDetails(),
            ContactDetails(),
          ],
        ),
      ),
    );
  }
}
