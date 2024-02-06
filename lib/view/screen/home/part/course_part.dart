import 'dart:math' as math;

import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/view/screen/allcourse/screen/all_course_screen.dart';
import 'package:dataspin_academy/view/screen/course_info/screen/course_info_screen.dart';
import 'package:dataspin_academy/view/screen/home/widget/course_card_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/row_text_widget.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CoursePart extends StatefulWidget {
  const CoursePart({super.key});

  @override
  State<CoursePart> createState() => _CoursePartState();
}

class _CoursePartState extends State<CoursePart> {
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(viewportFraction: 0.92);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppSize.horizontalPadding.w),
          child: RowTextWidget(
            leftText: "Kurslar",
            onTap: () {
              context.push(AllCourseScreen.routeName);
            },
          ).animate(
            effects: [
              FadeEffect(
                delay: 1200.ms,
                curve: Curves.fastLinearToSlowEaseIn,
                duration: 1500.ms,
              )
            ],
          ),
        ),
        SizedBox(height: 12.h),
        BlocBuilder<CourseWithPriceCubit, CourseWithPriceState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              get: (result) {
                return SizedBox(
                  height: result.data.isEmpty ? 0 : 360.h,
                  child: PageView.builder(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    controller: pageController,
                    physics: const BouncingScrollPhysics(),
                    itemCount: result.data.length,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: result.data[index]!.course.status
                          ? AnimatedBuilder(
                              animation: pageController,
                              builder: (context, child) {
                                double pageOffset = 0;
                                if (pageController.position.haveDimensions) {
                                  pageOffset = pageController.page! - index;
                                }
                                double gausse = math.exp(
                                    -(math.pow(pageOffset.abs() - 0.5, 2) /
                                        0.08));
                                return Material(
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
                                    child: Transform.translate(
                                      offset: Offset(
                                          -16 * gausse * pageOffset.sign, 0),
                                      child: CourseCardWidget(
                                        pageOffset: pageOffset,
                                        courseWithPriceData:
                                            result.data[index]!,
                                      ),
                                    ),
                                  ),
                                );
                              })
                          : null,
                    ),
                  ),
                ).animate(
                  effects: [
                    FlipEffect(
                      delay: 600.ms,
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: 1500.ms,
                    )
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }
}
