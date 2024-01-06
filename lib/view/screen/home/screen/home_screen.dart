import 'package:dataspin_academy/controller/bloc/bottom_bar/cubit/bottom_bar_index_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_for/course_for_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_type/course_type_cubit.dart';
import 'package:dataspin_academy/controller/bloc/mentors/mentors_cubit.dart';
import 'package:dataspin_academy/controller/bloc/news/cubit/news_cubit.dart';
import 'package:dataspin_academy/controller/service/locator/service_locator.dart';
import 'package:dataspin_academy/view/screen/home/part/category_part.dart';
import 'package:dataspin_academy/view/screen/home/part/course_part.dart';
import 'package:dataspin_academy/view/screen/home/part/mentor_part.dart';
import 'package:dataspin_academy/view/screen/home/part/news_part.dart';
import 'package:dataspin_academy/view/screen/home/widget/bottom_bar_item_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/bottom_bar_widget.dart';
import 'package:dataspin_academy/view/screen/profile_screen/screen/profile_screen.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    context.read<MentorsCubit>().getMentors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomBarWidget(
        iconPath: const [
          AppIcons.home,
          AppIcons.news,
          AppIcons.course,
          AppIcons.profile,
          AppIcons.menu,
        ],
        itemTitles: const [
          "Bosh sahifa",
          "Yangiliklar",
          "Kurslarim",
          "Profil",
          "Menyu",
        ],
        onTabChanged: (index) {
          locator<PageController>().animateToPage(index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn);
        },
      ),
      body: PageView(
        controller: locator<PageController>(),
        physics: const BouncingScrollPhysics(),
        allowImplicitScrolling: true,
        onPageChanged: (index) {
          context.read<BottomBarIndexCubit>().changeIndex(index);
        },
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(height: 12.h),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.horizontalPadding.w),
                child: const NewsPart(),
              ),
              SizedBox(height: 14.h),
              const CategoryPart(),
              SizedBox(height: 16.h),
              const CoursePart(),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.horizontalPadding.w),
                child: const MentorPart(),
              )
            ],
          ),
          const Center(
              child: Text(
            "Yangiliklar",
            style: AppFonts.h3,
          )),
          const Center(
              child: Text(
            "Kurslarim",
            style: AppFonts.h3,
          )),
          const ProfileScreen(),
          const Center(
              child: Text(
            "Menyu",
            style: AppFonts.h3,
          )),
        ],
      ),
    );
  }
}
