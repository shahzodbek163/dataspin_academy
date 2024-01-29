import 'package:dataspin_academy/view/screen/mycourse/widget/selectable_button.dart';
import 'package:dataspin_academy/view/screen/promo_code/widget/my_promocode.dart';
import 'package:dataspin_academy/view/screen/promo_code/widget/promocode_card_square.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/appbars/text_appbar.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.h),
              TextAppbar(
                text: "Promokodlar",
              ),
              SizedBox(height: 12.h),
              SelectableButton(
                tabTitles: const [
                  "Barchasi",
                  "Promokodlarim",
                ],
                onChangeIndex: (value) {
                  pageController.animateToPage(
                    value,
                    duration: 500.ms,
                    curve: Curves.fastLinearToSlowEaseIn,
                  );
                },
              ),
              SizedBox(height: 18.h),
              Expanded(
                child: PageView(
                  controller: pageController,
                  children: [
                    AnimationLimiter(
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
                              child:
                                  FadeInAnimation(child: PromoCodeCardSquare()),
                            ),
                          );
                        },
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Expanded(
                              child: MainTextField(
                                text: "Yangi Promokod",
                                hintText: "Yangi promokodni kiriting",
                              ),
                            ),
                            SizedBox(width: 12.w),
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  width: 110.w,
                                  height: 48.h,
                                  alignment: Alignment.center,
                                  decoration: ShapeDecoration(
                                    color: AppColor.primary,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: Text(
                                    "Saqlash",
                                    style: AppFonts.body16Regular.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 16.h),
                        Expanded(
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: 20,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: const MyPromoCard().animate(
                                effects: [
                                  MoveEffect(
                                    begin: Offset(
                                        index % 2 == 0
                                            ? -MediaQuery.sizeOf(context).width
                                            : MediaQuery.sizeOf(context).width,
                                        0),
                                    end: const Offset(0, 0),
                                    duration: 1000.ms,
                                    delay: (index * 300).ms,
                                    curve: Curves.fastLinearToSlowEaseIn,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}