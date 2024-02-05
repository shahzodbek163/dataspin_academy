import 'package:dataspin_academy/controller/bloc/bottom_bar/bottom_bar_cubit.dart';
import 'package:dataspin_academy/generated/assets.dart';
import 'package:dataspin_academy/view/screen/about_us/screen/about_as_screen.dart';
import 'package:dataspin_academy/view/screen/home/screen/home_screen.dart';
import 'package:dataspin_academy/view/screen/home/widget/bottom_bar_widget.dart';
import 'package:dataspin_academy/view/screen/menu/screen/menu_screen.dart';
import 'package:dataspin_academy/view/screen/mycourse/screen/my_course_screen.dart';
import 'package:dataspin_academy/view/screen/news/screen/news_screen.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = "/main_screen";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = const [
    HomeScreen(),
    NewsScreen(),
    MyCourseScreen(),
    AboutUsScreen(),
    MenuScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomBarWidget(
        iconPath: const [
          AppIcons.home,
          AppIcons.news,
          AppIcons.course,
          Assets.iconsUserTag,
          AppIcons.menu,
        ],
        itemTitles: const [
          "Bosh sahifa",
          "Yangiliklar",
          "Kurslarim",
          "DataSpin",
          "Menu",
        ],
        onTabChanged: (index) {
          context.read<BottomBarIndexCubit>().changeIndex(index);
        },
      ),
      body: BlocBuilder<BottomBarIndexCubit, int>(
        builder: (context, state) => screens[state].animate().rotate(),
      ),
    );
  }
}
