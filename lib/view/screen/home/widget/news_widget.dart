import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/model/news/response/news_response.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsWidget extends StatelessWidget {
  final NewsData newsData;
  const NewsWidget({super.key, required this.newsData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192.h,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: CachedNetworkImageProvider(
            "${AppIp.ip}/api/image/?id=${newsData.photo.id}"),
      )),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black, Colors.black12])),
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
              child: Text("Professional dasturchilar uchun Yangi backend kursi",
                  style: AppFonts.label.copyWith(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
