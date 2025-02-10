import 'package:flutter/material.dart';
import '../../../onboard/theme/colors.dart';

class FAQWidget extends StatefulWidget {
  @override
  _FAQWidgetState createState() => _FAQWidgetState();
}

class _FAQWidgetState extends State<FAQWidget> {
  String? _expandedQuestion;
  String? _expandedCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(19.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 19,
              spreadRadius: 1,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Icon(Icons.help_outline, color: SplashColors.brightOrange, size: 24),
                  SizedBox(width: 8),
                  Text(
                    "Frequently Asked Questions",
                    style: TextStyle(
                      color: SplashColors.darkBlue,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ...faqCategories.map((category) => _buildFAQCategory(category)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQCategory(FAQCategory category) {
    bool isExpanded = _expandedCategory == category.categoryName;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            category.categoryName,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: SplashColors.darkBlue,
            ),
          ),
          trailing: Icon(
            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            color: SplashColors.brightOrange,
          ),
          onTap: () {
            setState(() {
              _expandedCategory = isExpanded ? null : category.categoryName;
              _expandedQuestion = null; // Collapse all questions when closing a category
            });
          },
        ),
        if (isExpanded)
          ...category.faqs.map((faq) => _buildFAQTile(faq)).toList(),
        if (isExpanded) _buildDivider(),
      ],
    );
  }

  Widget _buildFAQTile(FAQ faq) {
    return ListTile(
      title: Text(
        faq.question,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: SplashColors.darkBlue,
        ),
      ),
      trailing: Icon(
        _expandedQuestion == faq.question ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
        color: SplashColors.brightOrange,
      ),
      onTap: () {
        setState(() {
          _expandedQuestion = _expandedQuestion == faq.question ? null : faq.question;
        });
      },
      subtitle: _expandedQuestion == faq.question
          ? Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Text(
          faq.answer,
          style: TextStyle(color: SplashColors.mediumBlue.withOpacity(0.8)),
        ),
      )
          : null,
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Divider(
        color: SplashColors.mediumBlue.withOpacity(0.4),
        thickness: 0.8,
      ),
    );
  }
}

class FAQCategory {
  final String categoryName;
  final List<FAQ> faqs;

  FAQCategory({required this.categoryName, required this.faqs});
}

class FAQ {
  final String question;
  final String answer;

  FAQ({required this.question, required this.answer});
}

final List<FAQCategory> faqCategories = [
  FAQCategory(
    categoryName: "Account & Profile",
    faqs: [
      FAQ(question: "How do I reset my password?", answer: "Go to Settings > Account > Reset Password."),
      FAQ(question: "How do I update my profile information?", answer: "Go to Profile > Edit to update your information."),
      FAQ(question: "Can I delete my account?", answer: "Yes, you can delete your account from Settings > Account > Delete Account."),
    ],
  ),
  FAQCategory(
    categoryName: "Trip Planning",
    faqs: [
      FAQ(question: "How do I create a new trip?", answer: "Go to the Trips tab and click on the '+' button to create a new trip."),
      FAQ(question: "How do I invite friends to collaborate on a trip?", answer: "Open the trip details and click on 'Invite Friends' to share the trip link."),
      FAQ(question: "Can I edit or delete an itinerary?", answer: "Yes, you can edit or delete an itinerary from the trip details page."),
    ],
  ),
  FAQCategory(
    categoryName: "Geo-Adventures & Challenges",
    faqs: [
      FAQ(question: "How do I start a geo-adventure?", answer: "Go to the Geo-Adventures tab and select a challenge to start."),
      FAQ(question: "What happens if I can’t complete a challenge?", answer: "You can retry the challenge or skip it, but rewards will not be awarded."),
      FAQ(question: "How are rewards calculated?", answer: "Rewards are based on the difficulty level and completion time of the challenge."),
    ],
  ),
  FAQCategory(
    categoryName: "Social & Travel Logs",
    faqs: [
      FAQ(question: "How do I create a travel log?", answer: "Go to the Travel Logs tab and click on the '+' button to create a new log."),
      FAQ(question: "Can I make my travel logs private?", answer: "Yes, you can set your travel logs to private in the log settings."),
      FAQ(question: "How do I report inappropriate content?", answer: "Click on the 'Report' button on the content you wish to report."),
    ],
  ),
  FAQCategory(
    categoryName: "Technical Issues",
    faqs: [
      FAQ(question: "The app is crashing. What should I do?", answer: "Try restarting the app or reinstalling it. If the issue persists, contact support."),
      FAQ(question: "I’m having trouble logging in. How can I fix this?", answer: "Ensure your credentials are correct or reset your password. If the issue persists, contact support."),
      FAQ(question: "How do I enable offline mode?", answer: "Go to Settings > Offline Mode and enable it to use the app without an internet connection."),
    ],
  ),
  FAQCategory(
    categoryName: "Payments & Subscriptions",
    faqs: [
      FAQ(question: "Is TripLink free to use?", answer: "Yes, TripLink is free to use, but premium features require a subscription."),
      FAQ(question: "How do I upgrade to a premium plan?", answer: "Go to Settings > Subscriptions to upgrade to a premium plan."),
      FAQ(question: "How do I cancel my subscription?", answer: "Go to Settings > Subscriptions and follow the instructions to cancel."),
    ],
  ),
];
