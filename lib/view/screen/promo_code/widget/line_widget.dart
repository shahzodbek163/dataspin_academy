import 'package:dataspin_academy/view/screen/promo_code/widget/status_button_widget.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LineWidget extends StatelessWidget {
  String text;
  String count;
  bool status;
  LineWidget(
      {super.key,
      this.text = "A5623CD",
      this.count = "124",
      this.status = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.horizontalPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: AppFonts.h3.copyWith(color: AppColor.textColor),
                ),
                Row(
                  children: [
                    StatusButtonWidget(),
                    SizedBox(width: 10.w),
                    Text(
                      count,
                      style: AppFonts.labelw700.copyWith(
                        color: AppColor.primary,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    SvgPicture.asset(
                      AppIcons.profile,
                      color: AppColor.iconColor,
                      height: 16,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            height: 1,
            decoration: const BoxDecoration(color: AppColor.dividerSecondary),
          )
        ],
      ),
    );
  }
}
