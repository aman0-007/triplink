import 'package:flutter/material.dart';
import 'package:triplink/screens/register/components/button.dart';
import 'package:triplink/screens/register/components/dashlinetext.dart';
import 'package:triplink/screens/register/components/passwordrules.dart';
import '../register/components/termsandprivacytext.dart';
import '../register/components/textfield.dart';
import '../register/register_screen.dart';
import '../screen_change_anim.dart';
import 'components/forgotpasswordtext.dart';

class Signup extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double buttonWidth = MediaQuery.of(context).size.width * 0.4;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            icon: Icons.email_outlined,
            hintText: 'Email/Phone',
            keyboardType: TextInputType.emailAddress,
            controller: _emailController,
          ),
          SizedBox(height: 15),
          CustomTextField(
            icon: Icons.password_outlined,
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            controller: _passwordController,
          ),
          SizedBox(height: 20),
          CustomButton(
            text: 'Sign Up',
            onPressed: () {
              Navigator.push(
                context,
                AnimatedPageTransition(
                  page: RegisterScreen(),
                  transitionType: TransitionType.fade,
                ),
              );
            },
            padding: EdgeInsets.only(top: 13, bottom: 5),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ForgotPasswordText(),
          ),
          DashedLineWithText(text: "OR"),
          SizedBox(height: 20),
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
          SizedBox(height: 20),
          TermsAndPrivacyText(),
        ],
      ),
    );
  }
}
