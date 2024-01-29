import 'package:dataspin_academy/view/screen/mycourse/widget/selectable_button.dart';
import 'package:dataspin_academy/view/screen/promo_code/widget/promocode_card_square.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/widget/appbars/text_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PromoCodeScreen extends StatefulWidget {
  static const String routeName = "/promo_code_screen";

  const PromoCodeScreen({super.key});

  @override
  State<PromoCodeScreen> createState() => _PromoCodeScreenState();
}

class _PromoCodeScreenState extends State<PromoCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSize.horizontalPadding),
              child: TextAppbar(
                text: "Promokodlar",
              ),
            ),
            SizedBox(height: 12.h),
            const SelectableButton(
              tabTitles: [
                "Barchasi",
                "Promokodlarim",
              ],
            ),
            SizedBox(height: 18.h),
            Expanded(
              child: AnimationLimiter(
                child: MasonryGridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  addAutomaticKeepAlives: true,
                  itemCount: 21,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredGrid(
                      columnCount: 21,
                      position: index,
                      duration: const Duration(milliseconds: 800),
                      child: const ScaleAnimation(
                        child: FadeInAnimation(child: PromoCodeCardSquare()),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
