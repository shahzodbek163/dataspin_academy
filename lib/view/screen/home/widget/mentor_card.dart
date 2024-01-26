import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/model/mentor/mentor_result.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MentorCard extends StatefulWidget {
  final MentorResultData mentorResultData;

  const MentorCard({super.key, required this.mentorResultData});

  @override
  State<MentorCard> createState() => _MentorCardState();
}

class _MentorCardState extends State<MentorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xFFF1F3F6),
          width: 1.h,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 100.w,
                  height: 100.h,
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
                          "${AppIp.ip}/api/image/?id=${widget.mentorResultData.employee.photo.id}",
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
                widget.mentorResultData.employee.isVerified == true
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
            SizedBox(height: 5.h),
            Text(
              "${widget.mentorResultData.employee.face.firstname} ${widget.mentorResultData.employee.face.lastname}",
              style: AppFonts.h4,
            ),
            SizedBox(height: 5.h),
            SizedBox(
              width: 250.w,
              child: Center(
                child: Text(
                  widget.mentorResultData.courses
                      .map((e) => e.courseType.name)
                      .join(", "),
                  style:
                      AppFonts.label.copyWith(color: AppColor.txtSecondColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F8FD),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/book.png",
                          width: 16.w,
                          height: 16.w,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          "${widget.mentorResultData.courses.length.toString()} ta kurslar",
                          style: AppFonts.body12Regular,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 20.h,
                    width: 1.w,
                    color: AppColor.secondary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/icons/star.png",
                          width: 16.w,
                          height: 16.w,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          "${widget.mentorResultData.employee.practice} yillik tajriba",
                          style: AppFonts.body12Regular,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
