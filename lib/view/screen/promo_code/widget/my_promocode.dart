import 'package:dataspin_academy/generated/assets.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPromoCard extends StatelessWidget {
  const MyPromoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F6FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 16.h,
              decoration: const ShapeDecoration(
                color: AppColor.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
              ),
              child: Text(
                "02-02-2024",
                style: AppFonts.body10Medium.copyWith(color: Colors.white),
              ),
            ),
          ),
          const Positioned(
            top: 28,
            left: 12,
            bottom: 20,
            child: Text(
              "WKA2UY",
              style: AppFonts.body16Regular,
            ),
          ),
          Positioned(
            right: 16,
            top: 0,
            bottom: 0,
            child: Row(
              children: [
                const Text(
                  "12",
                  style: AppFonts.body16Regular,
                ),
                SizedBox(width: 8.w),
                SvgPicture.asset(Assets.iconsPeople),
                SizedBox(width: 12.w),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
