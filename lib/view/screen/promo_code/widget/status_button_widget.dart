import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatusButtonWidget extends StatelessWidget {
  String text;
  StatusButtonWidget({super.key, this.text = "Aktiv"});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.secondary, borderRadius: BorderRadius.circular(6)),
      child: Container(
        height: 32.h,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          text,
          style: AppFonts.label.copyWith(color: AppColor.primary),
        ),
      ),
    );
  }
}
