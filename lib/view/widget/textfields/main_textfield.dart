import 'package:dataspin_academy/model/enum/screen_type.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MainTextField extends StatelessWidget {
  final bool onReq;
  final String? text;
  final String hintText;
  final TextEditingController? controller;
  final MaskTextInputFormatter? maskTextInputFormatter;
  final TextInputType? keyboardType;
  final bool isEmpty;
  final bool isValid;
  final ScreenType screenType;
  final bool isHiding;
  final Widget? suffix;
  final bool? animateBorder;
  final bool upText;

  const MainTextField({
    super.key,
    this.onReq = false,
    this.text,
    required this.hintText,
    this.controller,
    this.maskTextInputFormatter,
    this.keyboardType,
    this.isEmpty = false,
    this.isValid = true,
    this.screenType = ScreenType.createAccount,
    this.isHiding = false,
    this.suffix,
    this.animateBorder = false,
    this.upText = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        !upText
            ? const SizedBox()
            : Row(
                children: [
                  Text(
                    text!,
                    style: AppFonts.label,
                  ),
                  SizedBox(width: 5.w),
                  onReq
                      ? Text(
                          "*",
                          style: AppFonts.label.copyWith(
                            color: const Color(0xFFFF0000),
                          ),
                        )
                      : const SizedBox(),
                  Text(
                    isEmpty
                        ? "(Ma'lumot kiritilishi zarur)"
                        : !isValid
                            ? "Noto'g'ri ma'lumot kiritildi"
                            : "",
                    style: AppFonts.label.copyWith(
                      color: AppColor.errorColor,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 6.h),
                ],
              ),
        SizedBox(height: 4.h),
        AnimatedContainer(
          duration: const Duration(milliseconds: 600),
          curve: Curves.bounceInOut,
          width: double.infinity,
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1.w,
              color: animateBorder! ? Colors.red : const Color(0xFFEBEBF9),
            ),
          ),
          child: TextField(
            controller: controller,
            obscureText: isHiding,
            keyboardType: keyboardType,
            inputFormatters: maskTextInputFormatter == null
                ? null
                : [maskTextInputFormatter!],
            cursorColor: Colors.black,
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                child: suffix,
              ),
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
