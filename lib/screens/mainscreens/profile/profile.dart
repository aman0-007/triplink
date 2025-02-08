import 'package:flutter/material.dart';
import 'contactdetails.dart';
import 'coverimage.dart';
import 'madewithlovetext.dart';
import 'personaldetails.dart';
import 'profileimage.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            CoverImage(),
            // AppBar(
            //   backgroundColor: Colors.transparent,
            //   elevation: 0,
            //   leading: IconButton(
            //     icon: Icon(Icons.arrow_back, color: Colors.white),
            //     onPressed: (){
            //       Navigator.pop(context);
            //     },
            //   ),
            //   title: Text(
            //     "Profile",
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // )
          ]),
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              PersonalDetails(),
              ProfileImage(),
            ],
          ),
          ContactDetails(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07, // Adjust this value to control the bottom space
          ),
          MadeWithLoveText(),
        ],
      ),
    );
  }
}
