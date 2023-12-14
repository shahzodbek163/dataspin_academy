import 'package:dataspin_academy/controller/bloc/course/course_for/course_for_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_type/course_type_cubit.dart';
import 'package:dataspin_academy/controller/bloc/news/cubit/news_cubit.dart';
import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:dataspin_academy/view/screen/home/part/category_part.dart';
import 'package:dataspin_academy/view/screen/home/part/course_part.dart';
import 'package:dataspin_academy/view/screen/home/part/mentor_part.dart';
import 'package:dataspin_academy/view/screen/home/part/news_part.dart';
import 'package:dataspin_academy/view/screen/home/widget/chips_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/course_card_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/row_text_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/top_search_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/mentor_card.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
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
    super.initState();
    context.read<CourseTypeCubit>().getCourseType();
    context.read<CourseForCubit>().getAllCourseFor();
    context.read<CourseWithPriceCubit>().getAllCourseWithPrice();
    context.read<NewsCubit>().getAllNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const TopSearchWidget(),
          ),
          const SizedBox(height: 18),
          const NewsPart(),
          SizedBox(height: 17.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const CategoryPart(),
          ),
          SizedBox(height: 16.h),
          const CoursePart(),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const MentorPart(),
          )
        ],
      ),
    );
  }
}
