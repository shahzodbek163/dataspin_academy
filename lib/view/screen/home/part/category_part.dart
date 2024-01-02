import 'package:dataspin_academy/controller/bloc/category_filter/course_filter_by_type_bloc.dart';
import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_type/course_type_cubit.dart';
import 'package:dataspin_academy/controller/provider/selectble_index_provider.dart';
import 'package:dataspin_academy/view/screen/categories/screen/categorie_screen.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
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
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppSize.horizontalPadding.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Kategoriyalar", style: AppFonts.h2w600),
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  context.read<CourseWithPriceCubit>().state.maybeWhen(
                        orElse: () {},
                        get: (result) {
                          context
                              .read<CourseFilterByTypeBloc>()
                              .add(CourseFilterByTypeEvent.all(result));
                          context.push(CategoriesScreen.routeName);
                        },
                      );
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
        ),
        SizedBox(height: 14.h),
        BlocBuilder<CourseTypeCubit, CourseTypeState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              getting: () => const CircularProgressIndicator(),
              get: (item) => SelectableRow(
                forMainScreen: true,
                listRes: [""] + item.data.map((e) => e.name).toList(),
                onChangedIndex: (index) {
                  context.read<SelectableIndexProvider>().change(index);
                  context.read<CourseWithPriceCubit>().state.maybeWhen(
                        orElse: () {},
                        get: (result) {
                          return context.read<CourseFilterByTypeBloc>().add(
                                CourseFilterByTypeEvent.byId(
                                  result,
                                  item.data[index - 1].id,
                                  item.data[index - 1].name,
                                ),
                              );
                        },
                      );
                  context.push(CategoriesScreen.routeName);
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
