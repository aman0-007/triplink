import 'package:flutter/material.dart';
import 'package:triplink/screens/mainscreens/blog/carosel.dart';
import 'package:triplink/screens/mainscreens/blog/userblogcontent.dart';
import 'package:triplink/screens/mainscreens/blog/userblogs.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselWidget(),
          BlogListWidget(),
        ],
      ),
    );
  }
}
