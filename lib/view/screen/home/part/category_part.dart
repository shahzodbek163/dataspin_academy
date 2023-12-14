import 'package:dataspin_academy/controller/bloc/course/course_type/course_type_cubit.dart';
import 'package:dataspin_academy/view/screen/home/widget/chips_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/row_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryPart extends StatelessWidget {
  const CategoryPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowTextWidget(),
        SizedBox(height: 20.h),
        BlocBuilder<CourseTypeCubit, CourseTypeState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              getting: () => const Center(child: CircularProgressIndicator()),
              get: (result) {
                return SizedBox(
                  height: 34.h,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: result.data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 12.w),
                      child:  ChipsWidget(text: result.data[index].name),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
