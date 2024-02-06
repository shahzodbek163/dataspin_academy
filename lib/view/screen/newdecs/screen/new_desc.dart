import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/provider/new_desc_provider.dart';
import 'package:dataspin_academy/controller/service/api/url_photo.dart';
import 'package:dataspin_academy/model/news/response/news_response.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewDescScreen extends StatelessWidget {
  static const String routeName = "/news_desc";
  const NewDescScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    NewsData? newsData = context.read<NewDescProvider>().newsData;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 380.h,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(32)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                  UrlPhoto.url(
                    newsData!.photo.id.toString(),
                  ),
                ),
              ),
            ),
          ).animate().moveY(
              begin: -380,
              end: 0,
              curve: Curves.fastLinearToSlowEaseIn,
              duration: const Duration(milliseconds: 500)),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Nomi",
                      style: AppFonts.h4,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      newsData.name,
                      style: AppFonts.body16Regular.copyWith(
                        color: AppColor.txtSecondColor,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Qisqacha ma'lumot",
                      style: AppFonts.h4,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      newsData.shortDesc,
                      style: AppFonts.body16Regular.copyWith(
                        color: AppColor.txtSecondColor,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "To'liq ma'lumot",
                      style: AppFonts.h4,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      newsData.fullDesc,
                      style: AppFonts.body16Regular.copyWith(
                        color: AppColor.txtSecondColor,
                      ),
                    ),
                  ],
                ).animate().fadeIn(
                    delay: const Duration(milliseconds: 300),
                    duration: const Duration(milliseconds: 500)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
