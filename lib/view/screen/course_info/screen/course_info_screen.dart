import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/view/screen/home/widget/chips_widget.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                leading: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: const Icon(Icons.arrow_back_ios)),
                leadingWidth: 60.w,
                expandedHeight: 300.h,
                stretch: true,
                systemOverlayStyle: const SystemUiOverlayStyle(
                    statusBarBrightness: Brightness.dark),
                flexibleSpace: FlexibleSpaceBar(
                  background: CachedNetworkImage(
                    imageUrl:
                        "${AppIp.ip}/api/image/?id=${context.read<CourseInfoProvider>().courseWithPriceData!.course!.previewPhoto!.id}",
                    fit: BoxFit.contain,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                                context
                                    .read<CourseInfoProvider>()
                                    .courseWithPriceData!
                                    .course!
                                    .name!,
                                style: AppFonts.h3),
                          ),
                          const Icon(Icons.share_outlined)
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          ChipsWidget(
                            text:
                                "${context.read<CourseInfoProvider>().courseWithPriceData!.price!} so'm" ??
                                    "Nomalum",
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            textStyle: AppFonts.body12w700,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        context
                            .read<CourseInfoProvider>()
                            .courseWithPriceData!
                            .course!
                            .courseType!
                            .description!,
                        style: AppFonts.body18Regular,
                      ),
                      SizedBox(height: 100.h),
                    ],
                  ),
                ),
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
