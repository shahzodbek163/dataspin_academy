import 'dart:developer';

import 'package:dataspin_academy/controller/bloc/course/course_type/course_type_cubit.dart';
import 'package:dataspin_academy/view/screen/categories/widget/categorie_chips.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/widget/appbars/simple_appbar.dart';
import 'package:dataspin_academy/view/widget/buttons/selectble_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreen extends StatefulWidget {
  static const String routeName = "/categories_screen";

  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<CourseTypeCubit>().getCourseType();
  }

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SimpleAppbar.simpleAppbar(
          leadingIconPath: AppIcons.backArrow,
          title: "Categories",
          context: context),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<CourseTypeCubit, CourseTypeState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  getting: () => const CircularProgressIndicator(),
                  get: (result) => SelectbleRow(
                    listRes: result.data.map((e) => e.name).toList(),
                    onChangedIndex: (index) {
                      log(index.toString());
                      selectIndex = index;
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 16.h),
            const Text(
              "Categoriyaga tegishli kurslar",
              style: AppFonts.h4,
            ),
            SizedBox(height: 4.h),
            Text(
              "Fronted",
              style: AppFonts.h4.copyWith(
                color: const Color(0xFF6941C6),
              ),
            ),
            SizedBox(height: 8.h),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.only(bottom: 24),
                  child: CategoriesChips(),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
