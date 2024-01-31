import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/model/promocode/response/all_promocode_response.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';

class PromoCodeCardSquare extends StatelessWidget {
  AllPromocodeData allPromocodeData;
  PromoCodeCardSquare({
    Key? key,
    required this.allPromocodeData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      decoration: ShapeDecoration(
        color: const Color(0xFFF5F6FA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(allPromocodeData.promoCode, style: AppFonts.h3w400),
          Container(
            width: 56,
            height: 56,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: allPromocodeData.userInfo.profilePhoto == null
                    ? const CachedNetworkImageProvider(
                        "https://qph.cf2.quoracdn.net/main-qimg-2b21b9dd05c757fe30231fac65b504dd")
                    : CachedNetworkImageProvider(
                        "${AppIp.ip}/api/image/?id=${allPromocodeData.userInfo.profilePhoto!.id}"),
                fit: BoxFit.cover,
              ),
              shape: const OvalBorder(),
            ),
          ),
          Text(
              "${allPromocodeData.userInfo.firstname} ${allPromocodeData.userInfo.lastname}",
              style: AppFonts.body12w400),
          Text(
            'Promokod orqali\nro’yxatdan o’tganlar',
            textAlign: TextAlign.center,
            style: AppFonts.body12w400.copyWith(
              color: const Color(0XFF6941C6),
            ),
          ),
          Text(allPromocodeData.totalCount.toString(),
              style: AppFonts.body12w400),
        ],
      ),
    );
  }
}
