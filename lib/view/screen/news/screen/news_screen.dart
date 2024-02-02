import 'package:dataspin_academy/controller/bloc/news/cubit/news_cubit.dart';
import 'package:dataspin_academy/view/screen/news/widget/news_card.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsScreen extends StatelessWidget {
  static const String routeName = "/news_screen";

  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.h),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Yangiliklar",
              style: AppFonts.h3,
            ),
          ),
          SizedBox(height: 10.h),
          BlocBuilder<NewsCubit, NewsState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                getting: () => const Center(child: CircularProgressIndicator()),
                get: (result) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: result.data.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: NewsCard(data: result.data[index]).animate(
                          effects: [
                            MoveEffect(
                              begin: Offset(
                                  index % 2 == 0
                                      ? -MediaQuery.sizeOf(context).width - 100
                                      : MediaQuery.sizeOf(context).width + 100,
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
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
