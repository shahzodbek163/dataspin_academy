import 'package:dataspin_academy/view/screen/home/widget/course_widget.dart';
import 'package:dataspin_academy/view/widget/mentor_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home_screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: MentorCard(
            image: "assets/image/thor.png",
            name: "Vladyslav Zhuravel",
            information: "Designer at Webflow",
            numStudents: "+12 400",
            courses: "6 courses",
            rating: "5/5 rating",
          ),
        )),
      ),
    );
  }
}
