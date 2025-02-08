import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  // Defining the image URLs directly in the widget
  final List<String> imageUrls = [
    'https://cdn.pixabay.com/photo/2023/03/31/13/19/girl-7889973_640.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9y7gmxKSteBevw99gELzYze-JsTCQZMrHPq5slTzA4fsG-89gkHo0CcDJP8uNfuzduoE&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-4ihvq1C29Us00EJ9zVjf-7y3HiqFq1KSug&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4hPbNofw058bMFroOMcmsmpl5NzG7fVmQ8Q&s',
    'https://vagatrip.com/storage/blogs/June2023/cover6.jpg',
  ];

  PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    // Optional: Automatically change the page after some interval
    Future.delayed(Duration(seconds: 2), _autoSlide);
  }

  void _autoSlide() {
    if (_currentPage < imageUrls.length - 1) {
      _currentPage++;
    } else {
      _currentPage = 0;
    }
    _pageController.animateToPage(
      _currentPage,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
    Future.delayed(Duration(seconds: 2), _autoSlide); // Continuously call autoSlide
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // PageView carousel displaying network images with border radius and space between images
        Container(
          height: 200.0, // Adjust the height as needed
          child: PageView.builder(
            controller: _pageController,
            itemCount: imageUrls.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0), // Add space between images
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15), // Apply border radius
                  child: Image.network(
                    imageUrls[index],
                    fit: BoxFit.cover,
                    width: double.infinity, // Ensure the image fills the container
                    height: double.infinity, // Ensure the image fills the container
                  ),
                ),
              );
            },
          ),
        ),
        // Custom Page Indicator with Animation
        Padding(
          padding: const EdgeInsets.only(top: 8.0,bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageUrls.asMap().entries.map((entry) {
              // Check if this is the current page to adjust the size
              bool isActive = _currentPage == entry.key;
              double dotSize = isActive ? 12.0 : 8.0; // Increase size for the active dot

              return AnimatedContainer(
                duration: Duration(milliseconds: 300), // Smooth transition for size and color
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                width: dotSize,
                height: dotSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive ? Colors.blue : Colors.grey.withOpacity(0.5),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
