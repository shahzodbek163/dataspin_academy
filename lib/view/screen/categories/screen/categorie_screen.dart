import 'package:dataspin_academy/controller/bloc/category_filter/course_filter_by_type_bloc.dart';
import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_type/course_type_cubit.dart';
import 'package:dataspin_academy/controller/provider/selectble_index_provider.dart';
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: SimpleAppbar.simpleAppbar(
        leadingIconPath: AppIcons.backArrow,
        title: "Kategories",
        context: context,
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<CourseTypeCubit, CourseTypeState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                getting: () => const CircularProgressIndicator(),
                get: (item) => SelectableRow(
                  forMainScreen: false,
                  listRes: ["Barchasi"] + item.data.map((e) => e.name).toList(),
                  onChangedIndex: (index) {
                    context.read<SelectableIndexProvider>().change(index);
                    if (index == 0) {
                      context.read<CourseWithPriceCubit>().state.maybeWhen(
                            orElse: () {},
                            get: (result) {
                              return context
                                  .read<CourseFilterByTypeBloc>()
                                  .add(CourseFilterByTypeEvent.all(result));
                            },
                          );
                    } else {
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
                    }
                  },
                ),
              );
            },
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const Text(
              "Kategoriyaga tegishli kurslar",
              style: AppFonts.h4,
            ),
          ),
          SizedBox(height: 4.h),
          BlocBuilder<CourseFilterByTypeBloc, CourseFilterByTypeState>(
            builder: (context, state) => state.maybeWhen(
                orElse: () => const SizedBox(),
                data: (result, name) {
                  return result.data.isEmpty
                      ? const Center(
                          child: Text("Malumot yo'q"),
                        )
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                name,
                                style: AppFonts.h4.copyWith(
                                  color: const Color(0xFF6941C6),
                                ),
                              ),
                              SizedBox(height: 8.h),
                              SizedBox(
                                height:
                                    MediaQuery.sizeOf(context).height * 0.75,
                                child: ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  itemCount: result.data.length,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.only(bottom: 24),
                                    child: CategoriesChips(
                                      courseData: result.data[index]!,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                }),
          )
        ],
      )),
    );
  }
}
