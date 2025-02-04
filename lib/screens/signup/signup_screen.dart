import 'package:flutter/material.dart';
import 'package:triplink/screens/signup/signup.dart';
import 'components/signupheader.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SignupHeader(),
          Signup(),
        ],
      ),
    );
  }
}