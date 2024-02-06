import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/service/api/api_service.dart';
import 'package:dataspin_academy/controller/service/api/url_photo.dart';
import 'package:dataspin_academy/controller/service/dio/cutom_dio.dart';
import 'package:dataspin_academy/model/comment/response/comment_response.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentCardWidget extends StatelessWidget {
  CommentData? commentData;
  CommentCardWidget({super.key, this.commentData});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) async {
        await ApiService(CustomDio().get).deleteComment(commentData!.course.id);
      },
      background: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  commentData!.userInfo.profilePhoto == null
                      ? SvgPicture.asset(
                          AppIcons.profile,
                          color: Colors.black,
                        )
                      : SizedBox(
                          width: 30.w,
                          height: 30.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: commentData!.userInfo.profilePhoto == null
                                ? CachedNetworkImage(
                                    imageUrl: AppIcons.profileNo)
                                : CachedNetworkImage(
                                    imageUrl: UrlPhoto.url(commentData!
                                        .userInfo.profilePhoto!.id
                                        .toString()),
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                  SizedBox(width: 12.w),
                  Text(
                    "${commentData!.userInfo.firstname} ${commentData!.userInfo.lastname}",
                    style: AppFonts.body16w500
                        .copyWith(color: AppColor.txtSecondColor),
                  ),
                ],
              ),
              Text(
                commentData!.date.toString().substring(0, 10),
                style: AppFonts.body14Regular.copyWith(
                  color: AppColor.primary,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            commentData!.replyText,
            style: AppFonts.body16Regular,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
