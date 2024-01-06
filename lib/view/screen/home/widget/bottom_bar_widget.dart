import 'package:dataspin_academy/controller/bloc/bottom_bar/cubit/bottom_bar_index_cubit.dart';
import 'package:dataspin_academy/view/screen/home/widget/bottom_bar_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBarWidget extends StatelessWidget {
  final List<String> itemTitles;
  final List<String> iconPath;
  final ValueChanged<int> onTabChanged;

  const BottomBarWidget(
      {super.key,
      required this.itemTitles,
      required this.iconPath,
      required this.onTabChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            itemTitles.length,
            (index) => Material(
                  color: Colors.transparent,
                  child: BlocBuilder<BottomBarIndexCubit, BottomBarIndexState>(
                    builder: (context, state) {
                      return InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {
                          context
                              .read<BottomBarIndexCubit>()
                              .changeIndex(index);
                          onTabChanged(index);
                        },
                        child: BottomBarItem(
                          iconPath: iconPath[index],
                          text: itemTitles[index],
                          isActive: state.index == index,
                        ),
                      );
                    },
                  ),
                )),
      ),
    );
  }
}
