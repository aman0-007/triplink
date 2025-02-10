import 'package:flutter/material.dart';
import 'model/faq_model.dart';
import 'widgets/additional_support.dart';
import 'widgets/contact_support.dart';
import 'widgets/faq.dart';
import 'widgets/search_bar.dart';

class HelpSupportScreen extends StatelessWidget {
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
            FAQWidget(),
            ContactSupportWidget(),
            AdditionalResourcesWidget(),
          ],
        ),
      ),
    );
  }
}