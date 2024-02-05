import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ThreeIconWidget extends StatelessWidget {
  const ThreeIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87.h,
      decoration: BoxDecoration(
        color: AppColor.fd,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(AppIcons.languageCircle, height: 24.h),
              const Text(
                "O'zbek",
                style: AppFonts.body16Regular,
              ),
            ],
          ),
          Container(
            height: 40,
            width: 1,
            color: AppColor.secondary,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(AppIcons.twoUser, height: 24.h),
              Text(
                "${context.read<CourseInfoProvider>().courseWithPriceData!.receptionCounter.totalCount} nafar o'quvchi",
                style: AppFonts.body16Regular,
              ),
            ],
          ),
          Container(
            height: 40,
            width: 1,
            color: AppColor.secondary,
          ),
          GestureDetector(
            onTap: () {
              launchUrl(Uri(
                  scheme: "tel",
                  path:
                      "+${context.read<CourseInfoProvider>().courseWithPriceData!.mentor.employee.face.tel1}"));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(
                  AppIcons.call,
                  height: 24.h,
                  color: AppColor.primary,
                ),
                const Text(
                  "Qo'ng'iroq",
                  style: AppFonts.body16Regular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
