import 'package:dataspin_academy/controller/provider/selectble_index_provider.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SelectableRow extends StatefulWidget {
  final List<String> listRes;
  final Function(int index) onChangedIndex;
  final bool forMainScreen;

  Color backgroundColor;
  Color textColor;
  TextStyle textStyle;

  SelectableRow({
    super.key,
    required this.listRes,
    this.backgroundColor = AppColor.secondary,
    this.textColor = AppColor.primary,
    this.textStyle = AppFonts.body16Regular,
    required this.onChangedIndex,
    required this.forMainScreen
  });

  @override
  State<SelectableRow> createState() => _SelectableRowState();
}

class _SelectableRowState extends State<SelectableRow> {
  //final scrollController = ScrollController();

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int selectIndex = context.read<SelectableIndexProvider>().selectIndex ?? 0;

    return SizedBox(
      height: 36.h,
      child: ListView.builder(
        itemCount: widget.listRes.length,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 14.w),
        //controller: widget.forMainScreen?null:scrollController,
        itemBuilder: (context, index) {
          return widget.listRes[index] == ""
              ? const SizedBox()
              : Padding(
                  padding: EdgeInsets.only(right: 12.w),
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
