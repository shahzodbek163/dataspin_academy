import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChipsWidget extends StatelessWidget {
  final String text;

  const ChipsWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColor.secondary, borderRadius: BorderRadius.circular(30)),
      child: Text(
        text,
        style: AppFonts.body16Regular.copyWith(
          color: AppColor.primary,
        ),
      ),
    );
  }
}
