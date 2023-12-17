import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MentorCard extends StatefulWidget {
  final String image;
  final String name;
  final String information;
  final String numStudents;
  final String courses;
  final String rating;

  const MentorCard({
    super.key,
    required this.image,
    required this.name,
    required this.information,
    required this.numStudents,
    required this.courses,
    required this.rating,
  });

  @override
  State<MentorCard> createState() => _MentorCardState();
}

class _MentorCardState extends State<MentorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xFFF1F3F6),
          width: 1.h,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 50.w,
                      height: 50.h,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFF5956E9),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: 46.w,
                        height: 46.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(widget.image, headers: {
                              'ngrok-skip-browser-warning': "true",
                            }),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -8.h,
                      child: Image.asset(
                        "assets/icons/verif.png",
                        width: 20.w,
                        height: 20.h,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: AppFonts.h4,
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      widget.information,
                      style: AppFonts.label.copyWith(
                        color: AppColor.txtSecondColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
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
                          "assets/icons/profile2user.png",
                          width: 16.w,
                          height: 16.w,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          widget.numStudents,
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
                          "assets/icons/book.png",
                          width: 16.w,
                          height: 16.w,
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          widget.courses,
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
                          widget.rating,
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
