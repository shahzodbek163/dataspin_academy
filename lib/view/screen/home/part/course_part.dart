import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/view/screen/course_info/screen/course_info_screen.dart';
import 'package:dataspin_academy/view/screen/home/widget/course_card_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/row_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CoursePart extends StatelessWidget {
  const CoursePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: const RowTextWidget(leftText: "Kurslar"),
        ),
        SizedBox(height: 12.h),
        BlocBuilder<CourseWithPriceCubit, CourseWithPriceState>(
          builder: (context, state) {
            return state.maybeWhen(
                orElse: () => const SizedBox(),
                getting: () => const Center(child: CircularProgressIndicator()),
                get: (result) {
                  return SizedBox(
                    height: 285.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: result.data!.length,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(right: 6.w),
                        child: CourseCardWidget(
                          courseWithPriceData: result.data![index],
                          onTap: () {
                            context
                                .read<CourseInfoProvider>()
                                .change(result.data![index]);

                            context.push(CourseInfoScreen.routeName);
                          },
                        ),
                      ),
                    ),
                  );
                });
          },
        ),
      ],
    );
  }
}
