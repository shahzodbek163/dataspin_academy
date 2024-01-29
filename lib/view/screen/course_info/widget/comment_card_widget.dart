import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          commentData!.date.toString().substring(0, 10),
          style: AppFonts.body14Regular.copyWith(
            color: AppColor.primary,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            commentData!.replyText,
            style: AppFonts.body16Regular.copyWith(
              color: AppColor.txtSecondColor,
            ),
            overflow: TextOverflow.fade,
          ),
        ),
        SizedBox(height: 10.h),
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
                        width: 36,
                        height: 36,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: CachedNetworkImage(
                            imageUrl:
                                "${AppIp.ip}/api/image/?id=${commentData!.userInfo.profilePhoto.id}",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                SizedBox(width: 12.w),
                Text(
                  "${commentData!.userInfo.firstname} ${commentData!.userInfo.lastname}",
                  style: AppFonts.body16w500,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
