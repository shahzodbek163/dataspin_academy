import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/model/course/course_price/response/course_with_price_response.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseCardWidget extends StatefulWidget {
  final CourseWithPriceData courseWithPriceData;
  final VoidCallback onTap;

  const CourseCardWidget(
      {super.key, required this.courseWithPriceData, required this.onTap});

  @override
  State<CourseCardWidget> createState() => _CourseCardWidgetState();
}

class _CourseCardWidgetState extends State<CourseCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 358.w,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColor.divider),
      ),
      child: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      "${AppIp.ip}/api/image/?id=${widget.courseWithPriceData.course.previewPhoto.id}",
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.courseWithPriceData.course.name,
                  textAlign: TextAlign.start,
                  style: AppFonts.body16Regular
                      .copyWith(color: AppColor.txtSecondColor),
                ),
                SizedBox(height: 8.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Qabulda : ",
                          style: AppFonts.label,
                        ),
                        SvgPicture.asset("assets/icons/profile-2user.svg"),
                        SizedBox(width: 6.w),
                        Text(
                          "${widget.courseWithPriceData.receptionCounter.totalCount}",
                          style: AppFonts.label,
                        ),
                        SizedBox(width: 6.w),
                      ],
                    ),
                    Text(
                      widget.courseWithPriceData.price == null
                          ? "Kurs narxi : Belgilanmagan"
                          : "Kurs narxi : ${widget.courseWithPriceData.price}",
                      style: AppFonts.label.copyWith(
                          color: AppColor.primary, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                SizedBox(height: 13.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.courseWithPriceData.course.courseType.name,
                      style: AppFonts.h2w600,
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(6),
                      onTap: widget.onTap,
                      child: Container(
                        height: 32.h,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColor.secondary,
                            borderRadius: BorderRadius.circular(6)),
                        child: Text("Ro'yxatdan o'tish",
                            style: AppFonts.label
                                .copyWith(color: AppColor.primary)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
