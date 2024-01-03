import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesChips extends StatelessWidget {
  final String image;
  final String type;
  final String courseName;
  final String personImage;
  final String personName;

  const CategoriesChips({
    super.key,
    required this.image,
    required this.type,
    required this.courseName,
    required this.personImage,
    required this.personName,
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
                      imageUrl: image,
                      width: 156.w,
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
                          Text(
                            type,
                            style: AppFonts.body12Regular.copyWith(
                              color: AppColor.txtSecondColor,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            courseName,
                            style: AppFonts.h4.copyWith(
                              fontSize: 20,
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
                      )
                    ],
                  ),
                ],
              ),
            ),
            personName == "null"
                ? const SizedBox()
                : Column(
                    children: [
                      SizedBox(height: 10,),
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
                                    personImage,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              personName,
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
