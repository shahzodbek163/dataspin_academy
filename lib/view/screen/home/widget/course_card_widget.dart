import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseCardWidget extends StatelessWidget {
  final String courseName;

  const CourseCardWidget({super.key, required this.courseName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 299.h,
      width: 351.w,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.divider)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/image/Rectangle11.png"),
          Text(
            "Design",
            textAlign: TextAlign.start,
            style: AppFonts.label.copyWith(color: AppColor.txtSecondColor),
          ),
          SizedBox(height: 8.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "5/5",
                    style: AppFonts.body12Regular,
                  ),
                  const Icon(Icons.star, color: Colors.yellow, size: 16),
                  SizedBox(width: 6.w),
                  Text("98",
                      style: AppFonts.body12Regular
                          .copyWith(color: AppColor.txtSecondColor)),
                ],
              ),
              Text(
                "\$139.00",
                style: AppFonts.body12Regular.copyWith(
                    color: AppColor.primary, fontWeight: FontWeight.w500),
              )
            ],
          ),
          SizedBox(height: 13.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                courseName,
                style: AppFonts.h4,
              ),
              InkWell(
                highlightColor: Colors.red,
                child: Container(
                  height: 32.h,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColor.secondary,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text("Try for Free",
                      style: AppFonts.body12Regular
                          .copyWith(color: AppColor.primary)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
