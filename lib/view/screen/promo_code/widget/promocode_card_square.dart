import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';

class PromoCodeCardSquare extends StatelessWidget {
  const PromoCodeCardSquare({Key? key}) : super(key: key);

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
          const Text('3048687', style: AppFonts.h3w400),
          Container(
            width: 56,
            height: 56,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                  "https://i.pinimg.com/originals/db/1f/9a/db1f9a3eaca4758faae5f83947fa807c.jpg",
                ),
                fit: BoxFit.cover,
              ),
              shape: OvalBorder(),
            ),
          ),
          const Text('Aziza Ikomaliyeva', style: AppFonts.body12w400),
          Text(
            'Promokod orqali\nro’yxatdan o’tganlar',
            textAlign: TextAlign.center,
            style: AppFonts.body12w400.copyWith(
              color: const Color(0XFF6941C6),
            ),
          ),
          const Text('24 ta', style: AppFonts.body12w400),
        ],
      ),
    );
  }
}
