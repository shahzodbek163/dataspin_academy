import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/view/screen/course_info/screen/course_info_screen.dart';
import 'package:dataspin_academy/view/screen/home/widget/course_card_widget.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AllCourseScreen extends StatefulWidget {
  static const String routeName = "/all_course_screen";

  const AllCourseScreen({super.key});

  @override
  State<AllCourseScreen> createState() => _AllCourseScreenState();
}

class _AllCourseScreenState extends State<AllCourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 38.h),
            const Text(
              "Barcha kurslar",
              style: AppFonts.h3,
            ),
            Expanded(
              child: BlocBuilder<CourseWithPriceCubit, CourseWithPriceState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => const SizedBox(),
                      getting: () =>
                          const Center(child: CircularProgressIndicator()),
                      get: (result) {
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemCount: result.data.length,
                          itemBuilder: (context, index) => result
                                  .data[index]!.course.status
                              ? Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(12),
                                    onTap: () {
                                      result.data[index];
                                      context
                                          .read<CourseInfoProvider>()
                                          .change(result.data[index]!);
                                      context.push(CourseInfoScreen.routeName);
                                    },
                                    child: CourseCardWidget(
                                      pageOffset: 0,
                                      courseWithPriceData: result.data[index]!,
                                      conHeight: 380,
                                    ),
                                  ),
                                )
                              : null,
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
