import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/bloc/news/cubit/news_cubit.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsPart extends StatelessWidget {
  const NewsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            getting: () => const Center(child: CircularProgressIndicator()),
            get: (result) {
              return Container(
                height: 192.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(
                          "http://192.168.237.66:8080/api/image/?id=${result.data![0].photo.id}"),
                    )),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [Colors.black, Colors.black12])),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 20.h,
                        padding: EdgeInsets.symmetric(horizontal: 6.w),
                        decoration: const BoxDecoration(
                            color: Color(0xFFFF5C00),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                        child: Text(
                          "Yangiliklar",
                          style:
                              AppFonts.body12w700.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18.w,
                      bottom: 45.h,
                      child: Text("SPRING MVC",
                          style: AppFonts.h1.copyWith(color: Colors.white)),
                    ),
                    Positioned(
                      bottom: 8.h,
                      left: 18.w,
                      child: SizedBox(
                        width: 242,
                        child: Text(
                            "Professional dasturchilar uchun Yangi backend kursi",
                            style:
                                AppFonts.label.copyWith(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
