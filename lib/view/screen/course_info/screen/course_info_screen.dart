import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/view/screen/home/widget/chips_widget.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseInfoScreen extends StatefulWidget {
  static const String routeName = "/course_info_screen";
  const CourseInfoScreen({super.key});

  @override
  State<CourseInfoScreen> createState() => _CourseInfoScreenState();
}

class _CourseInfoScreenState extends State<CourseInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.white,
                leading: const Icon(Icons.arrow_back_ios),
                leadingWidth: 60.w,
                expandedHeight: 300.h,
                stretch: true,
                systemOverlayStyle: const SystemUiOverlayStyle(
                    statusBarBrightness: Brightness.dark),
                flexibleSpace: FlexibleSpaceBar(
                  background: CachedNetworkImage(
                    imageUrl:
                        "https://avatars.mds.yandex.net/get-verba/937147/2a000001835ae3e7bf064a9b8961918d4575/cattouch",
                    fit: BoxFit.cover,
                  ),
                  stretchModes: const [
                    StretchMode.zoomBackground,
                    StretchMode.blurBackground,
                    StretchMode.fadeTitle
                  ],
                ),
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(0),
                    child: Container(
                      height: 32.h,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(32),
                              topRight: Radius.circular(32))),
                      child: Container(
                        height: 5.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.grey),
                      ),
                    )),
              ),
              SliverToBoxAdapter(
                child: Container(
                    height: 800.h,
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  "Assalomu alaykum qadrli mehmon nima gapla olamda",
                                  style: AppFonts.h3,
                                ),
                              ),
                              Icon(Icons.share_outlined)
                            ],
                          ),
                          SizedBox(
                            width: 150,
                            child: ChipsWidget(
                              text: "349.000 so'm",
                              backgroundColor: Colors.green,
                              textColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: MainButton(
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
