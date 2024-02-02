import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/provider/new_desc_provider.dart';
import 'package:dataspin_academy/controller/service/api/url_photo.dart';
import 'package:dataspin_academy/model/news/response/news_response.dart';
import 'package:dataspin_academy/view/screen/newdecs/screen/new_desc.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class NewsCard extends StatelessWidget {
  final NewsData data;
  const NewsCard({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    String month = "";
    String day = "";
    if (data.date.month < 10) {
      month = "0${data.date.month}";
    } else {
      month = data.date.month.toString();
    }
    if (data.date.day < 10) {
      day = "0${data.date.day}";
    } else {
      day = data.date.day.toString();
    }
    return Container(
      height: 214,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: CachedNetworkImageProvider(
              UrlPhoto.url(data.photo.id.toString())),
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black, Colors.black12],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      color: Color(0xFF6941C6),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Text(
                      "${data.date.year}-$month-$day dan boshlab",
                      style: AppFonts.body10Medium.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        Text(
                          data.name,
                          style: AppFonts.h3.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 1),
                        SizedBox(
                          width: 180,
                          child: Text(
                            data.shortDesc,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppFonts.body12Regular.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        context.read<NewDescProvider>().newsChange(data);
                        context.push(NewDescScreen.routeName);
                      },
                      child: Container(
                        width: 36,
                        height: 36,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xFf6941C6),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/arrow_right.svg",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
