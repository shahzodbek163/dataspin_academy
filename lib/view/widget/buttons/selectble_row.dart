import 'dart:math';

import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SelectbleRow extends StatefulWidget {
  final List<String> listRes;
  final Function(int index) onChangedIndex;

  Color backgroundColor;
  Color textColor;
  TextStyle textStyle;

  SelectbleRow({
    super.key,
    required this.listRes,
    this.backgroundColor = AppColor.secondary,
    this.textColor = AppColor.primary,
    this.textStyle = AppFonts.body16Regular,
    required this.onChangedIndex,
  });

  @override
  State<SelectbleRow> createState() => _SelectbleRowState();
}

class _SelectbleRowState extends State<SelectbleRow> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      child: ListView.builder(
        itemCount: widget.listRes.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                selectIndex = index;
                widget.onChangedIndex.call(selectIndex);

                setState(() {});
              },
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 34.h,
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selectIndex == index
                      ? widget.textColor
                      : widget.backgroundColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  widget.listRes[index],
                  style: widget.textStyle.copyWith(
                    color: selectIndex == index
                        ? widget.backgroundColor
                        : widget.textColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      
    );
  }
}
