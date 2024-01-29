import 'package:dataspin_academy/controller/bloc/comment/cubit/comment_cubit.dart';
import 'package:dataspin_academy/view/screen/course_info/widget/comment_card_widget.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Fikrlar",
          style: AppFonts.h2w700,
        ),
        MainTextField(
          text: "",
          hintText: "Fikr",
          suffix: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                print("on tap");
              },
              child: const Icon(
                Icons.send,
                color: AppColor.primary,
              ),
            ),
          ),
        ),
        SizedBox(height: 30.h),
        BlocBuilder<CommentCubit, CommentState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
              get: (response) => ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: response.data.length,
                itemBuilder: (context, index) => CommentCardWidget(
                  commentData: response.data[index],
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
