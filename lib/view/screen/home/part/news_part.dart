import 'package:carousel_slider/carousel_slider.dart';
import 'package:dataspin_academy/controller/bloc/news/cubit/news_cubit.dart';
import 'package:dataspin_academy/view/screen/home/widget/news_widget.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsPart extends StatelessWidget {
  const NewsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox(),
          getting: () => const Center(child: CircularProgressIndicator()),
          get: (result) {
            if (result.data.isEmpty) {
              return const SizedBox();
            } else {
              return Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CarouselSlider.builder(
                        itemCount: result.data.length,
                        itemBuilder: (context, index, realIndex) {
                          return NewsWidget(
                            newsData: result.data[index],
                          );
                        },
                        options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 1,
                          disableCenter: true,
                          enlargeFactor: 1,
                          scrollDirection: Axis.vertical,
                          onPageChanged: (index, reason) {},
                        )),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              topRight: Radius.circular(8))),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Text(
                          "Yangiliklar",
                          style:
                              AppFonts.body12w700.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ).animate(
                effects: [
                  MoveEffect(
                    delay: 300.ms,
                    begin: Offset(MediaQuery.sizeOf(context).width, 0),
                    end: const Offset(0, 0),
                    duration: 1000.ms,
                    curve: Curves.fastLinearToSlowEaseIn,
                  )
                ],
              );
            }
          },
        );
      },
    );
  }
}
