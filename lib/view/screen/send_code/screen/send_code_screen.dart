import 'package:dataspin_academy/view/screen/check_code/screen/check_code_srceen.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_image.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SendCodeScreen extends StatelessWidget {
  static const String routeName = "/send_code_screen";

  const SendCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 68.h),
                child: Image.asset(AppImage.appLogo),
              ),
              const Text(
                "Hush kelibsiz",
                style: AppFonts.h1,
              ),
              SizedBox(height: 12.h),
              Text(
                "Ro’yxatdan o’tish uchun telefon raqamingizni kiriting",
                style: AppFonts.body18Regular
                    .copyWith(color: AppColor.txtSecondColor),
              ),
              SizedBox(height: 33.h),
              const MainTextField(
                hintText: "+998 (90) 123-45-67",
                text: "Telefon raqam",
              ),
              SizedBox(height: 85.h),
              GestureDetector(
                onTap: () => context.push(CheckCodeScreen.routeName),
                child: MainButton(
                  text: "Kodni olish",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
