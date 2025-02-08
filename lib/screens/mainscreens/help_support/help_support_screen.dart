import 'package:flutter/material.dart';
import 'model/faq_model.dart';
import 'widgets/additional_support.dart';
import 'widgets/contact_support.dart';
import 'widgets/faq.dart';
import 'widgets/search_bar.dart';

class HelpSupportScreen extends StatelessWidget {
  final List<FAQCategory> faqCategories = [
    FAQCategory(
      categoryName: "Account & Profile",
      faqs: [
        FAQ(question: "How do I reset my password?", answer: "Go to Settings > Account > Reset Password."),
        FAQ(question: "How do I update my profile information?", answer: "Go to Profile > Edit."),
      ],
    ),
    // Add more categories and FAQs
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help & Support",
          style: TextStyle(color: Colors.black), // Set text color to black
        ),
        backgroundColor: Colors.transparent, // Make AppBar transparent
        elevation: 0, // Remove shadow
        automaticallyImplyLeading: false, // Remove back arrow
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBarWidget(onSearch: (query) {
              // Implement search functionality
            }),
            FAQWidget(faqCategories: faqCategories),
            ContactSupportWidget(),
            AdditionalResourcesWidget(),
          ],
        ),
      ),
    );
  }
}