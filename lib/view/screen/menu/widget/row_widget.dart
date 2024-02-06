import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RowWidget extends StatelessWidget {
  String iconPath;
  String text;
  Color textColor;
  VoidCallback? onTap;
  Color iconColor;
  RowWidget({
    super.key,
    this.iconPath = AppIcons.callWithoutSound,
    this.text = "Call Markaz",
    this.onTap,
    this.iconColor = Colors.black,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    iconPath,
                    color: iconColor,
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    text,
                    style: AppFonts.body16w500.copyWith(color: textColor),
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
                color: iconColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
