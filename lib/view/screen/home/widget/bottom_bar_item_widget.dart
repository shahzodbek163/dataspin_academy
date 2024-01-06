import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarItem extends StatelessWidget {
  final String iconPath;
  final String text;
  final bool isActive;
  const BottomBarItem({
    super.key,
    required this.iconPath,
    required this.text,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: SizedBox(
        width: 75.w,
        height: 75.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
            SvgPicture.asset(
              iconPath,
              color: isActive ? AppColor.primary : AppColor.txtSecondColor,
            ),
            Text(
              text,
              style: AppFonts.body12Regular.copyWith(
                  color:
                      isActive ? AppColor.primary : AppColor.txtSecondColor),
            ),
          ],
        ),
      ),
    );
  }
}
