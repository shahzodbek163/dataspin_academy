import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopSearchWidget extends StatelessWidget {
  const TopSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 48.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColor.secondary)),
          child: Row(
            children: [
              SizedBox(width: 12.w),
              SvgPicture.asset("assets/icons/mdi_magnify.svg"),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: SizedBox(
                  width: 224,
                  child: TextField(
                    cursorColor: AppColor.primary,
                    style: AppFonts.label,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 7.5),
                        border: InputBorder.none,
                        hintText: "Search for a course",
                        hintStyle: AppFonts.label
                            .copyWith(color: AppColor.txtSecondColor)),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 16.w),
        Container(
          height: 48.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColor.secondary)),
          child: SvgPicture.asset("assets/icons/sort.svg"),
        )
      ],
    );
  }
}
