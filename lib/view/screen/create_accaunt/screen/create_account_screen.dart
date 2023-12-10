import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateAccountScreen extends StatelessWidget {
  static const String routeName = "/create_account_screen";

  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.horizontalPadding,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Account yaratish",
                  style: AppFonts.h1,
                ),
                SizedBox(
                  height: 12.h,
                ),
                const Text(
                  "Bizning dasturda ko’rib turganimizdan hursandmiz. Ushbu ma’lumotlarni to’ldirish orqali siz bizning servislarimizdan to’liq foydalanish huquqiga ega bo’lasiz",
                  style: AppFonts.body18Regular,
                ),
                SizedBox(height: 18.h),
                const MainTextField(
                  text: "Ismingiz",
                  hintText: "Ismingizni kiriting",
                  onReq: true,
                ),
                SizedBox(height: 14.h),
                const MainTextField(
                  text: "Familiyangiz",
                  hintText: "Familiyangizni kiriting",
                  onReq: true,
                ),
                SizedBox(height: 14.h),
                const MainTextField(
                  text: "Sharfingiz",
                  hintText: "Sharfingizni kiriting",
                ),
                SizedBox(height: 14.h),
                const MainTextField(
                  text: "Tug’ilgan kuningiz",
                  hintText: "28-09-2023",
                ),
                SizedBox(height: 14.h),
                const MainTextField(
                  text: "Asosiy telefon raqam",
                  hintText: "+998 (91)",
                  onReq: true,
                ),
                SizedBox(height: 14.h),
                const MainTextField(
                  text: "Qo’shimcha telefon raqam",
                  hintText: "+998 (91)",
                ),
                SizedBox(height: 14.h),
                const MainTextField(
                  text: "Telegram username",
                  hintText: "@username",
                ),
                SizedBox(height: 64.h),
                MainButton(text: "Tasdiqlash",onTap: () {

                },),
                SizedBox(height: 41.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
