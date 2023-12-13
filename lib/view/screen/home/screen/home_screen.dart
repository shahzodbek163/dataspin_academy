import 'package:dataspin_academy/controller/bloc/course_for/course_for_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course_type/course_type_cubit.dart';
import 'package:dataspin_academy/view/screen/home/widget/chips_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/course_card_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/row_text_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/top_search_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/mentor_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home_screen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<CourseTypeCubit>().getCourseType();
    context.read<CourseForCubit>().getAllCourseFor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
        child: ListView(
          children: [
            const TopSearchWidget(),
            SizedBox(height: 17.h),
            const RowTextWidget(),
            SizedBox(height: 20.h),
            BlocBuilder<CourseTypeCubit, CourseTypeState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  getting: () => const CircularProgressIndicator(),
                  get: (result) {
                    return SizedBox(
                      height: 42.h,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: result.data.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(right: 12.w),
                          child: ChipsWidget(text: result.data[index].name),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20.h),
            const RowTextWidget(leftText: "Kurslar"),
            SizedBox(height: 12.h),
            BlocBuilder<CourseForCubit, CourseForState>(
              builder: (context, state) {
                return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    getting: () => const CircularProgressIndicator(),
                    get: (result) {
                      return SizedBox(
                        height: 299.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: result.data.length,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(right: 6.w),
                            child: CourseCardWidget(
                              courseName: result.data[index].name,
                            ),
                          ),
                        ),
                      );
                    });
              },
            ),
            SizedBox(height: 20.h),
            const RowTextWidget(leftText: "Mentorlar"),
            SizedBox(height: 18.h),
            SizedBox(
              height: (155 + 40) * 3,
              child: ListView.builder(
                itemCount: 3,
                physics: const NeverScrollableScrollPhysics(),
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
    );
  }
}
