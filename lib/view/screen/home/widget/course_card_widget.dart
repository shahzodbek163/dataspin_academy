import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/model/course/course_for/course_for_result.dart';
import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseCardWidget extends StatelessWidget {
  final CourseWithPriceData courseWithPriceData;

  const CourseCardWidget({super.key, required this.courseWithPriceData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285.h,
      width: 351.w,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.divider)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 170.h,
            child: CachedNetworkImage(
                fit: BoxFit.contain,
                imageUrl:
                    "${AppIp.ip}/api/image/?id=${courseWithPriceData.course!.id}"),
          ),
          Text(
            courseWithPriceData.course!.name!,
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
                "\$${courseWithPriceData.price}",
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
                courseWithPriceData.course!.courseType!.name!,
                style: AppFonts.h4,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(6),
                child: Container(
                  height: 32.h,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColor.secondary,
                      borderRadius: BorderRadius.circular(6)),
                  child: Text("Ro'yxatdan o'tish",
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
