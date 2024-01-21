import 'package:dataspin_academy/view/screen/promo_code/widget/line_widget.dart';
import 'package:dataspin_academy/view/screen/promo_code/widget/status_button_widget.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/widget/appbars/text_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PromoCodeScreen extends StatelessWidget {
  static const String routeName = "/promo_code_screen";
  const PromoCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSize.verticalPadding + 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.horizontalPadding),
              child: TextAppbar(text: "Promokodlar"),
            ),
            SizedBox(height: 30.h),
            LineWidget(),
            LineWidget(),
            LineWidget(),
            LineWidget(),
            LineWidget(),
            LineWidget(),
            LineWidget(),
          ],
        ),
      ),
    );
  }
}
