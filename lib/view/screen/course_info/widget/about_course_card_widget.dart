import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutCourseCardWidget extends StatelessWidget {
  const AboutCourseCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Container(
        height: 86.h,
        decoration: BoxDecoration(
            color: AppColor.fd, borderRadius: BorderRadius.circular(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SvgPicture.asset(AppIcons.globalEarth),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "100% Online",
                  style: AppFonts.body18Regular,
                ),
                SizedBox(
                  width: 240.w,
                  child: Text(
                    "Start instantly and learn in you own schedule",
                    style:
                        AppFonts.label.copyWith(color: AppColor.txtSecondColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
