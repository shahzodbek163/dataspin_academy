import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_image.dart';
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
      height: 136.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: AppColor.divider,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 8.h, bottom: 8.h, left: 8.w),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: CachedNetworkImage(
                imageUrl: image,
                width: 156.w,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: AppFonts.body12Regular.copyWith(
                    color: AppColor.txtSecondColor,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  courseName,
                  style: AppFonts.h4,
                ),
                SizedBox(height: 9.h),
                Row(
                  children: [
                    Container(
                      width: 24.w,
                      height: 24.h,
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
                    SizedBox(width: 6.w),
                    Text(
                      personName,
                      style: AppFonts.body12Regular.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 107.w,
                  height: 32.h,
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
    );
  }
}
