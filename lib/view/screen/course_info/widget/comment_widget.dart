import 'package:dataspin_academy/controller/bloc/comment/cubit/comment_cubit.dart';
import 'package:dataspin_academy/controller/bloc/comment/post_comment/cubit/post_comment_cubit.dart';
import 'package:dataspin_academy/view/screen/course_info/widget/comment_card_widget.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentWidget extends StatefulWidget {
  int courseId;
  CommentWidget({super.key, required this.courseId});

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  final postCommentCubit = PostCommentCubit();
  final commentField = TextEditingController();
  bool isEmpty = false;
  final scrollController = ScrollController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    postCommentCubit.close();
    commentField.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Fikrlar",
          style: AppFonts.h2w700,
        ),
        BlocListener<PostCommentCubit, PostCommentState>(
          bloc: postCommentCubit,
          listener: (context, state) {
            // TODO: implement listener
            if (state == const PostCommentState.sent()) {
              context.read<CommentCubit>().getComment(widget.courseId);
              postCommentCubit.backInitial();
              scrollController.animateTo(
                scrollController.offset,
                duration: 1.ms,
                curve: Curves.fastLinearToSlowEaseIn,
              );
            }
          },
          child: MainTextField(
            text: "",
            
            hintText: "Fikr",
            controller: commentField,
            animateBorder: isEmpty,
            suffix: Material(
              color: Colors.transparent,
              child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    setState(() {
                      isEmpty = commentField.text.trim().isEmpty;
                    });
                    if (commentField.text.trim().isNotEmpty) {
                      postCommentCubit.postComment(
                          widget.courseId, commentField.text.trim());
                      commentField.clear();
                      FocusManager.instance.primaryFocus?.unfocus();
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: SvgPicture.asset(
                      AppIcons.fling,
                    ),
                  )),
            ),
          ),
        ),
        //  SizedBox(height: 20.h),
        BlocBuilder<CommentCubit, CommentState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              get: (response) => ListView.builder(
                controller: scrollController,
                addAutomaticKeepAlives: true,
                reverse: true,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: response.data.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CommentCardWidget(
                    commentData: response.data[index],
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
