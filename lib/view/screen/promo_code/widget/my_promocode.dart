import 'package:dataspin_academy/generated/assets.dart';
import 'package:dataspin_academy/model/promocode/response/all_promocode_response.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyPromoCard extends StatelessWidget {
  final AllPromocodeData promocodeData;
  const MyPromoCard({
    Key? key,
    required this.promocodeData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F6FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: 16,
              decoration: const ShapeDecoration(
                color: AppColor.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),        
                ),
              ),
              child: Text(
                "${promocodeData.date.toString().substring(0, 10)} ${promocodeData.date.hour + 5}:${promocodeData.date.minute}",
                style: AppFonts.body10Medium.copyWith(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 28,
            left: 12,
            bottom: 20,
            child: Text(
              promocodeData.promoCode,
              style: AppFonts.body16Regular,
            ),
          ),
          Positioned(
            right: 16,
            top: 0,
            bottom: 0,
            child: Row(
              children: [
                Text(
                  promocodeData.totalCount.toString(),
                  style: AppFonts.body16Regular,
                ),
                SizedBox(width: 8.w),
                SvgPicture.asset(Assets.iconsPeople),
                SizedBox(width: 12.w),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
