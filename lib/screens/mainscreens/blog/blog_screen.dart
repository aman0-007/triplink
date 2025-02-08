import 'package:flutter/material.dart';
import 'blog.dart';

class BlogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Blogs",style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Blog(),
          ],
        ),
      ),
    );
  }
}