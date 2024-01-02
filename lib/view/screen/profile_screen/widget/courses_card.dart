import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';

class CourseCard extends StatelessWidget {
  final String image;
  final String information;
  final String courseName;

  const CourseCard({
    super.key,
    required this.image,
    required this.information,
    required this.courseName,
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
                image: CachedNetworkImageProvider(
                  image,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Text(
                  information,
                  style: AppFonts.label.copyWith(
                    color: AppColor.txtSecondColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      courseName,
                      style: AppFonts.h4,
                    ),
                  ),
                ),
                SizedBox(height: 6.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
