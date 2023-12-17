import 'package:dataspin_academy/view/screen/categories/widget/categorie_chips.dart';
import 'package:dataspin_academy/view/screen/home/widget/chips_widget.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/widget/appbars/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreen extends StatelessWidget {
  static const String routName = "/categories_screen";

  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            const ChipsWidget(text: "Ismaloq"),
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
              itemCount: 2,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: CategoriesChips(),
              ),
            ))
          ],
        ),
      )),
    );
  }
}
