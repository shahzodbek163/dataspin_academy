import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChipsWidget extends StatelessWidget {
  const ChipsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColor.secondary, borderRadius: BorderRadius.circular(30)),
      child: Text("Try for Free",
          style: AppFonts.body12Regular.copyWith(color: AppColor.primary)),
    );
  }
}
