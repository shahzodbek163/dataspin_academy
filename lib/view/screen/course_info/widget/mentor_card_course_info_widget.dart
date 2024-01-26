import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MentorCardCourseInfoWidget extends StatelessWidget {
  const MentorCardCourseInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 80.w,
                  height: 80.h,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xFF5956E9),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    width: 96.w,
                    height: 96.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          "${AppIp.ip}/api/image/?id=${context.read<CourseInfoProvider>().courseWithPriceData!.mentor.employee.photo.id}",
                          headers: const {'ngrok-skip-browser-warning': "true"},
                        ),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                context
                            .read<CourseInfoProvider>()
                            .courseWithPriceData!
                            .mentor
                            .employee
                            .isVerified ==
                        true
                    ? Positioned(
                        bottom: -8.h,
                        child: Image.asset(
                          "assets/icons/verif.png",
                          width: 20.w,
                          height: 20.h,
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
            SizedBox(width: 13.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${context.read<CourseInfoProvider>().courseWithPriceData!.mentor.employee.face.firstname} ${context.read<CourseInfoProvider>().courseWithPriceData!.mentor.employee.face.lastname}",
                  style: AppFonts.h4,
                ),
                const SizedBox(height: 6),
                Text(
                  "Mentor", 
                  style:
                      AppFonts.label.copyWith(color: AppColor.txtSecondColor),
                )
              ],
            ),
          ],
        ),
        context
                    .read<CourseInfoProvider>()
                    .courseWithPriceData!
                    .mentor
                    .employee
                    .about ==
                null
            ? const SizedBox()
            : const SizedBox(height: 18),
        Text(
          context
                  .read<CourseInfoProvider>()
                  .courseWithPriceData!
                  .mentor
                  .employee
                  .about ??
              "",
          style:
              AppFonts.body16Regular.copyWith(color: AppColor.txtSecondColor),
        )
      ],
    );
  }
}
