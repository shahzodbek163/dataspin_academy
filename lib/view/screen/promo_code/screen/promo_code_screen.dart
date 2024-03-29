import 'package:dataspin_academy/controller/bloc/promocode/create_promo/create_promo_cubit.dart';
import 'package:dataspin_academy/controller/bloc/promocode/get_all_promo/get_all_promo_cubit.dart';
import 'package:dataspin_academy/controller/bloc/promocode/my_promos/get_my_promos_cubit.dart';
import 'package:dataspin_academy/view/screen/mycourse/widget/selectable_button.dart';
import 'package:dataspin_academy/view/screen/promo_code/widget/my_promocode.dart';
import 'package:dataspin_academy/view/screen/promo_code/widget/promocode_card_square.dart';
import 'package:dataspin_academy/view/screen/unactive_screen.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/appbars/text_appbar.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';

class PromoCodeScreen extends StatefulWidget {
  static const String routeName = "/promo_code_screen";

  const PromoCodeScreen({super.key});

  @override
  State<PromoCodeScreen> createState() => _PromoCodeScreenState();
}

class _PromoCodeScreenState extends State<PromoCodeScreen> {
  final pageController = PageController();
  final promoController = TextEditingController();

  @override
  void dispose() {
    pageController.dispose();
    promoController.dispose();
    super.dispose();
  }

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
                    BlocBuilder<GetAllPromoCubit, GetAllPromoState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            orElse: () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                            loaded: (data) => data.data.isEmpty
                                ? const Center(
                                    child: Text("Ma'lumot mavjud emas"),
                                  )
                                : AnimationLimiter(
                                    child: MasonryGridView.builder(
                                      shrinkWrap: true,
                                      padding: EdgeInsets.zero,
                                      physics: const BouncingScrollPhysics(),
                                      addAutomaticKeepAlives: true,
                                      itemCount: data.data.length,
                                      crossAxisSpacing: 16,
                                      mainAxisSpacing: 16,
                                      gridDelegate:
                                          const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                      ),
                                      itemBuilder: (context, index) {
                                        return AnimationConfiguration
                                            .staggeredGrid(
                                          columnCount: data.data.length,
                                          position: index,
                                          duration:
                                              const Duration(milliseconds: 800),
                                          child: ScaleAnimation(
                                            child: FadeInAnimation(
                                                child: PromoCodeCardSquare(
                                              allPromocodeData:
                                                  data.data[index],
                                            )),
                                          ),
                                        );
                                      },
                                    ),
                                  ));
                      },
                    ),
                    Column(
                      children: [
                        BlocBuilder<CreatePromoCubit, CreatePromoState>(
                          builder: (context, state) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: MainTextField(
                                    controller: promoController,
                                    text: "Yangi Promokod",
                                    hintText: "Yangi promokodni kiriting",
                                    animateBorder: state.maybeWhen(
                                      orElse: () => false,
                                      invalid: () => true,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12.w),
                                Material(
                                  color: Colors.transparent,
                                  child: BlocListener<CreatePromoCubit,
                                      CreatePromoState>(
                                    listener: (context, state) {
                                      if (state ==
                                          const CreatePromoState.created()) {
                                        context
                                            .read<GetMyPromosCubit>()
                                            .getData();
                                        context
                                            .read<GetAllPromoCubit>()
                                            .getAllPromocode();
                                      }
                                    },
                                    child: InkWell(
                                      onTap: () {
                                        context.read<CreatePromoCubit>().create(
                                              promoController.text.trim(),
                                            );
                                      },
                                      borderRadius: BorderRadius.circular(8),
                                      child: Container(
                                        width: 110.w,
                                        height: 48.h,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          color: AppColor.primary,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: state.maybeWhen(
                                          orElse: () => Text(
                                            "Saqlash",
                                            style:
                                                AppFonts.body16Regular.copyWith(
                                              color: Colors.white,
                                            ),
                                          ),
                                          creating: () =>
                                              const CircularProgressIndicator(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                        SizedBox(height: 16.h),
                        Expanded(
                          child:
                              BlocBuilder<GetMyPromosCubit, GetMyPromosState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                orElse: () => const Center(
                                    child: CircularProgressIndicator()),
                                loaded: (data) => data.data.isEmpty
                                    ? const Center(
                                        child: Text("Ma'lumot mavjud emas"),
                                      )
                                    : ListView.builder(
                                        padding: EdgeInsets.zero,
                                        itemCount: data.data.length,
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) =>
                                            Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 12),
                                          child: GestureDetector(
                                            onTap: () {
                                              context.push(
                                                  UnactiveScreen.routeName);
                                            },
                                            child: MyPromoCard(
                                              promocodeData: data.data[index],
                                            ).animate(
                                              effects: [
                                                MoveEffect(
                                                  begin: Offset(
                                                      index % 2 == 0
                                                          ? -MediaQuery.sizeOf(
                                                                  context)
                                                              .width
                                                          : MediaQuery.sizeOf(
                                                                  context)
                                                              .width,
                                                      0),
                                                  end: const Offset(0, 0),
                                                  duration: 1000.ms,
                                                  delay: (index * 300).ms,
                                                  curve: Curves
                                                      .fastLinearToSlowEaseIn,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                              );
                            },
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
