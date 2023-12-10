import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainTextField extends StatelessWidget {
  final bool onReq;
  final String text;
  final String hintText;

  const MainTextField({
    super.key,
    this.onReq = false,
    required this.text,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              text,
              style: AppFonts.label,
            ),
            onReq
                ? Text(
                    " *",
                    style: AppFonts.label.copyWith(
                      color: const Color(0xFFFF0000),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        SizedBox(height: 6.h),
        Container(
          width: double.infinity,
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1.w,
              color: const Color(0xFFEBEBF9),
            ),
          ),
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 12.w),
              hintText: hintText,
              hintStyle:
                  AppFonts.label.copyWith(color: AppColor.txtSecondColor),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
