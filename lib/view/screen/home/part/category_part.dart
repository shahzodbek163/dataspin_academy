import 'package:dataspin_academy/controller/bloc/course/course_type/course_type_cubit.dart';
import 'package:dataspin_academy/controller/provider/category_info_provider.dart';
import 'package:dataspin_academy/view/screen/categories/screen/categorie_screen.dart';
import 'package:dataspin_academy/view/screen/home/widget/chips_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/row_text_widget.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/buttons/selectble_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CategoryPart extends StatelessWidget {
  const CategoryPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Kategoriyalar", style: AppFonts.h2w600),
            InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                context.push(CategoriesScreen.routeName);
              },
              child: Text(
                "Barchasi",
                style: AppFonts.body16Regular.copyWith(
                  color: AppColor.txtSecondColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        BlocBuilder<CourseTypeCubit, CourseTypeState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              getting: () => const CircularProgressIndicator(),
              get: (result) => SelectbleRow(
                listRes: result.data.map((e) => e.name).toList(),
                onChangedIndex: (index) {},
              ),
            );
          },
        ),
      ],
    );
  }
}
