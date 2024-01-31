import 'package:dataspin_academy/controller/bloc/account/cubit/account_cubit.dart';
import 'package:dataspin_academy/view/screen/home/part/category_part.dart';
import 'package:dataspin_academy/view/screen/home/part/course_part.dart';
import 'package:dataspin_academy/view/screen/home/part/mentor_part.dart';
import 'package:dataspin_academy/view/screen/home/part/news_part.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AccountCubit>().getAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(height: 14.h),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppSize.horizontalPadding.w),
              child: const NewsPart(),
            ),
            SizedBox(height: 14.h),
            const CategoryPart(),
            SizedBox(height: 16.h),
            const CoursePart(),
            SizedBox(height: 16.h),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: AppSize.horizontalPadding.w),
              child: const MentorPart(),
            )
          ],
        ),
      ),
    );
  }
}
