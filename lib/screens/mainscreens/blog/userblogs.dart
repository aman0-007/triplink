import 'package:flutter/material.dart';
import 'package:triplink/screens/mainscreens/blog/userblogcontent.dart';

import '../../onboard/theme/colors.dart';
import '../../screen_change_anim.dart';

class BlogListWidget extends StatelessWidget {
  final List<Blog> blogs = [
    Blog(
      title: 'How to Get Started with Flutter',
      description: 'A beginner’s guide to starting your Flutter development journey.',
      date: '2025-02-08',
      imageUrl: 'https://images.unsplash.com/photo-1501555088652-021faa106b9b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YWR2ZW50dXJlfGVufDB8fDB8fHww',
    ),
    Blog(
      title: 'Exploring Dart Language Features',
      description: 'Dart programming language is the backbone of Flutter. Learn about its features.',
      date: '2025-02-07',
      imageUrl: 'https://i1.adis.ws/i/canon/get-inspired-outdoor-adventure-sports-1-16x9_a30efeac26914c1785ec9fbbd43bfb93?\$hero-header-half-16by9-dt-jpg\$',
    ),
    Blog(
      title: 'Top Flutter Widgets You Should Know',
      description: 'Widgets are the building blocks of a Flutter app. Here are the essential ones.',
      date: '2025-02-06',
      imageUrl: 'https://t4.ftcdn.net/jpg/02/74/75/59/360_F_274755986_wgBdzMHVMP96J6V9F4l7y5Befw3iwfqj.jpg',
    ),
    Blog(
      title: 'State Management in Flutter: A Comprehensive Guide',
      description: 'Understanding state management is crucial for Flutter development. Learn the key concepts.',
      date: '2025-02-05',
      imageUrl: 'https://static.vecteezy.com/system/resources/previews/010/217/701/non_2x/silhouette-group-of-tourist-with-backpack-is-climbing-a-cliff-alone-at-sunrise-he-had-an-effort-to-climb-all-the-way-to-the-top-of-the-mountain-and-he-had-to-succeed-free-photo.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: blogs.map((blog) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                // Define the action when the blog is tapped
                // For example, navigate to a detailed blog page
                Navigator.push(
                context,
                AnimatedPageTransition(
                page: UserBlogContent(), // Target page
                transitionType: TransitionType.slideFromBottom,
                ),
                );
              },
              child: BlogCard(blog: blog),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(color: SplashColors.lightBlue.withOpacity(0.4), thickness: 1.2),
            ),
          ],
        );
      }).toList(),
    );
  }
}

class Blog {
  final String title;
  final String description;
  final String date;
  final String imageUrl;

  Blog({
    required this.title,
    required this.description,
    required this.date,
    required this.imageUrl,
  });
}

class BlogCard extends StatelessWidget {
  final Blog blog;

  const BlogCard({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Expanded Column for Title, Description, Date
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blog.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: SplashColors.mediumBlue,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  blog.description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: SplashColors.darkBlue,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                const SizedBox(height: 8),
                Text(
                  blog.date,
                  style: TextStyle(
                    fontSize: 12,
                    color: SplashColors.lightBlue.withOpacity(0.6), // Lower opacity
                  ),
                ),
              ],
            ),
          ),
          // Image on the right side with circular corners and border
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), // Circular corners for the image
              border: Border.all(
                color: SplashColors.lightOrange, // Border color
                width: 2, // Border width
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7), // Circular corners for the image
              child: Image.network(
                blog.imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
