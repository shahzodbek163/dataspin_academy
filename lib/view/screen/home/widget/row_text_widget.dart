import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';

class RowTextWidget extends StatelessWidget {
  final String leftText;
  final Function()? onTap;

  const RowTextWidget({super.key, this.leftText = "Kategoriyalar", this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(leftText, style: AppFonts.h2w600),
        InkWell(
          onTap: onTap,
          child: Text("Barchasi",
              style: AppFonts.body16Regular
                  .copyWith(color: AppColor.txtSecondColor)),
        ),
      ],
    );
  }
}
