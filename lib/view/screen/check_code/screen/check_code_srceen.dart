import 'package:dataspin_academy/view/screen/check_code/widget/pin_input.dart';
import 'package:dataspin_academy/view/screen/check_code/widget/sec_timer.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/widget/appbars/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckCodeScreen extends StatelessWidget {
  static const String routeName = "/check_code_screen";

  const CheckCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppbar.simpleAppbar(
          leadingIconPath: AppIcons.backArrow,
          title: "Tasdiqlash",
          context: context),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 1,
              width: double.infinity,
              color: const Color(0xFFF1F3F6),
            ),
            SizedBox(height: 33.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Tasdiqlash kodi", style: AppFonts.h1),
                  SizedBox(height: 12.h),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Sizning telefon raqamingizga tasdiqlash kodi jo’natildi. Raqam ",
                          style: AppFonts.body18Regular,
                        ),
                        TextSpan(
                          text: "+998911234567",
                          style: AppFonts.h4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  const PinInput(),
                ], //Rounded Filled
              ),
            ),
            const Spacer(),
            const Center(
              child: SecTimer(),
            ),
            SizedBox(height: 24.h)
          ],
        ),
      ),
    );
  }
}
