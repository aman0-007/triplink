import 'package:flutter/material.dart';
import '../model/faq_model.dart';

class FAQWidget extends StatelessWidget {
  final List<FAQCategory> faqCategories;

  const FAQWidget({required this.faqCategories});

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {},
      children: faqCategories.map<ExpansionPanel>((FAQCategory category) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(category.categoryName),
            );
          },
          body: Column(
            children: category.faqs.map<Widget>((FAQ faq) {
              return ListTile(
                title: Text(faq.question),
                subtitle: Text(faq.answer),
              );
            }).toList(),
          ),
          isExpanded: false,
        );
      }).toList(),
    );
  }
}