import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';

class RowTextWidget extends StatelessWidget {
  final String leftText;
  const RowTextWidget({super.key, this.leftText = "Kategoriyalar"});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(leftText, style: AppFonts.h2),
        Text("Barchasi",
            style: AppFonts.body16Regular
                .copyWith(color: AppColor.txtSecondColor)),
      ],
    );
  }
}
