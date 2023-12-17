import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ChipsWidget extends StatelessWidget {
  final String text;
  Color backgroundColor;
  Color textColor;
  TextStyle textStyle;

  ChipsWidget({
    super.key,
    required this.text,
    this.backgroundColor = AppColor.secondary,
    this.textColor = AppColor.primary,
    this.textStyle = AppFonts.body16Regular,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(30)),
      child: Text(text, style: textStyle.copyWith(color: textColor)),
    );
  }
}
