import 'package:dataspin_academy/view/screen/home/widget/chips_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/course_card_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/row_text_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/top_search_widget.dart';
import 'package:dataspin_academy/view/value/my_behavior.dart';
import 'package:dataspin_academy/view/screen/home/widget/mentor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home_screen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 12),
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: ListView(
            children: [
              const TopSearchWidget(),
              SizedBox(height: 17.h),
              const RowTextWidget(),
              SizedBox(height: 20.h),
              SizedBox(
                  height: 42.h,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 12.w),
                      child: const ChipsWidget(),
                    ),
                  )),
              SizedBox(height: 20.h),
              const RowTextWidget(leftText: "Kurslar"),
              SizedBox(height: 12.h),
              SizedBox(
                height: 299.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(right: 6.w),
                    child: const CourseCardWidget(),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              const RowTextWidget(leftText: "Mentorlar"),
              SizedBox(height: 18.h),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: MentorCard(
                      image: "assets/image/thor.png",
                      name: "Vladyslav Zhuravel",
                      information: "Designer at Webflow",
                      numStudents: "+12 400",
                      courses: "6 courses",
                      rating: "5/5 rating",
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
