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
  double horizontalP;
  double verticalP;
  

  ChipsWidget({
    super.key,
    required this.text,
    this.backgroundColor = AppColor.secondary,
    this.textColor = AppColor.primary,
    this.textStyle = AppFonts.body16Regular,
    this.horizontalP = 12 ,
    this.verticalP = 8
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalP.w, vertical: verticalP.h),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(30)),
      child: Text(text, style: textStyle.copyWith(color: textColor)),
    );
  }
}
