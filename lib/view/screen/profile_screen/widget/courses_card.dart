import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseCard extends StatelessWidget {
  final String image;
  final String information;
  final String courseName;
  final String price;

  const CourseCard({
    super.key,
    required this.image,
    required this.information,
    required this.courseName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 257,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColor.divider,
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 135.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              information,
              style: AppFonts.label.copyWith(
                color: AppColor.txtSecondColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6.h),
              child:  Text(
                courseName,
                style: AppFonts.h4,
              ),
            ),
            Row(
              children: [
                const Text(
                  "5/5",
                  style: AppFonts.body12Regular,
                ),
                Image.asset(
                  "assets/icons/rating.png",
                  width: 16.w,
                  height: 16.h,
                ),
                Text(
                  "98",
                  style: AppFonts.body12Regular.copyWith(
                    color: AppColor.txtSecondColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.h),
            Text(
              "$price so'm",
              style: AppFonts.body18Regular.copyWith(
                color: AppColor.primary,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
