import 'package:dataspin_academy/controller/bloc/aboutus/cubit/aboutus_cubit.dart';
import 'package:dataspin_academy/controller/bloc/bottom_bar/cubit/bottom_bar_index_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_for/course_for_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_type/course_type_cubit.dart';
import 'package:dataspin_academy/controller/bloc/mentors/mentors_cubit.dart';
import 'package:dataspin_academy/controller/bloc/news/cubit/news_cubit.dart';
import 'package:dataspin_academy/controller/service/locator/service_locator.dart';
import 'package:dataspin_academy/view/screen/account/screen/account_screen.dart';
import 'package:dataspin_academy/view/screen/home/screen/home_screen.dart';
import 'package:dataspin_academy/view/screen/home/widget/bottom_bar_widget.dart';
import 'package:dataspin_academy/view/screen/menu/screen/menu_screen.dart';
import 'package:dataspin_academy/view/screen/mycourse/screen/my_course_screen.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = "/main_screen";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CourseTypeCubit>().getCourseType();
    context.read<CourseForCubit>().getAllCourseFor();
    context.read<CourseWithPriceCubit>().getAllCourseWithPrice();
    context.read<NewsCubit>().getAllNews();
    context.read<MentorsCubit>().getMentors();
    context.read<AboutUsCubit>().getAllAboutUs();
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
        children: const [
          HomeScreen(),
          Center(
              child: Text(
            "Yangiliklar",
            style: AppFonts.h3,
          )),
          MyCourseScreen(),
          AccountScreen(),
          MenuScreen(),
        ],
      ),
    );
  }
}
