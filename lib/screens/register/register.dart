import 'package:flutter/material.dart';
import 'package:triplink/screens/register/components/button.dart';
import 'package:triplink/screens/register/components/dashlinetext.dart';
import 'package:triplink/screens/register/components/passwordrules.dart';
import 'components/termsandprivacytext.dart';
import 'components/textfield.dart';

class Register extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final double buttonWidth = MediaQuery.of(context).size.width * 0.4;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            icon: Icons.person_outlined,
            hintText: 'First Name',
            keyboardType: TextInputType.name,
            controller: _firstNameController,
          ),
          SizedBox(height: 20),
          CustomTextField(
            icon: Icons.person_outlined,
            hintText: 'Last Name',
            keyboardType: TextInputType.name,
            controller: _lastNameController,
          ),
          SizedBox(height: 20),

          CustomTextField(
            icon: Icons.email_outlined,
            hintText: 'Email Address',
            keyboardType: TextInputType.emailAddress,
            controller: _emailController,
          ),
          SizedBox(height: 20),
          CustomTextField(
            icon: Icons.phone_outlined,
            hintText: 'Phone Number',
            keyboardType: TextInputType.phone,
            controller: _numberController,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  icon: Icons.password_outlined,
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  controller: _passwordController,
                ),
              ),
              SizedBox(width: 4),
              PasswordRulesButton()
            ],
          ),
          SizedBox(height: 20),
          CustomButton(
            text: 'Primary Button',
            onPressed: () {
              print('Primary button pressed');
            },
          ),
          DashedLineWithText(text: "OR"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  minimumSize: Size(buttonWidth, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: const Icon(Icons.g_mobiledata, color: Colors.red),
                onPressed: () {
                  // Google login logic
                },
                label: const Text("Google"),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: const Color(0xFF4267B2),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  minimumSize: Size(buttonWidth, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                icon: const Icon(Icons.facebook),
                onPressed: () {
                  // Facebook login logic
                },
                label: const Text("Facebook"),
              ),
            ],
          ),
          TermsAndPrivacyText(),
        ],
      ),
    );
  }
}
