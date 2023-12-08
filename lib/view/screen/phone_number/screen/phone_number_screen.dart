import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_image.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatelessWidget {
  static const String routeName = "/phone_number_screen";
  const PhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(AppImage.appLogo),
          const Text(
            "Hush kelibsiz",
            style: AppFonts.h1,
          ),
          const Text(
            "Ro’yxatdan o’tish uchun telefon raqamingizni kiriting",
            style: AppFonts.body18Regular,
          ),
          const Text(
            "Telefon raqam",
            style: AppFonts.label,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: AppColor.secondary))),
          )
        ],
      ),
    );
  }
}
