import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesChips extends StatelessWidget {
  final CourseWithPriceData courseData;

  const CategoriesChips({
    super.key,
    required this.courseData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: AppColor.divider,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 8.h,
          bottom: 10.h,
          left: 8.w,
          right: 8.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: double.infinity,
              height: 120.h,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: CachedNetworkImage(
                      imageUrl:
                          "${AppIp.ip}/api/image/?id=${courseData.course.previewPhoto.id}",
                      width: 130.w,
                      height: 120.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 180.w,
                            child: Text(
                              courseData.course.courseType.name,
                              style: AppFonts.body12Regular.copyWith(
                                color: AppColor.txtSecondColor,
                                fontSize: 14,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          SizedBox(
                            width: 180.w,
                            child: Text(
                              courseData.course.name,
                              style: AppFonts.body16w700,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 107.w,
                        height: 30.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: AppColor.secondary,
                        ),
                        child: Text(
                          "Kursga yozilish",
                          style: AppFonts.body12Regular.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColor.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            courseData.mentor == null
                ? const SizedBox()
                : Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColor.divider,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 5),
                        child: Row(
                          children: [
                            Container(
                              width: 35.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: CachedNetworkImageProvider(
                                    "${AppIp.ip}/api/image/?id=${courseData.mentor.employee.photo.id}",
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "${courseData.mentor.employee.face.firstname} ${courseData.mentor.employee.face.lastname}",
                              style: AppFonts.body12Regular.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
