import 'package:dataspin_academy/generated/assets.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocsCard extends StatelessWidget {
  final String docName;
  const DocsCard({Key? key, required this.docName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xFFEBEBF9),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              docName,
              style: AppFonts.body14Regular,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Container(
              width: 112.w,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: AppColor.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Yuklash",
                    style: AppFonts.body14Regular.copyWith(color: Colors.white),
                  ),
                  SizedBox(width: 8.w),
                  SvgPicture.asset(Assets.iconsDownload)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
