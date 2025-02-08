class FAQ {
  final String question;
  final String answer;

  FAQ({required this.question, required this.answer});
}

class FAQCategory {
  final String categoryName;
  final List<FAQ> faqs;

  FAQCategory({required this.categoryName, required this.faqs});
}