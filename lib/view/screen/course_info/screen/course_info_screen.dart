import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/bloc/reception/cubit/new_reception_cubit.dart';
import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/view/screen/course_info/widget/dialog_widget.dart';
import 'package:dataspin_academy/view/screen/course_info/widget/succes_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/chips_widget.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

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
      body: WillPopScope(
        onWillPop: () async {
          context.read<NewReceptionCubit>().backInitialState();
          return true;
        },
        child: Stack(
          children: [
            ColoredBox(
              color: Colors.white,
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    backgroundColor: Colors.white,
                    leading: GestureDetector(
                      onTap: () {
                        context.read<NewReceptionCubit>().state.maybeWhen(
                              orElse: () => () {},
                              initial: () {
                                context.pop();
                                context
                                    .read<NewReceptionCubit>()
                                    .backInitialState();
                              },
                            );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          child: const Icon(Icons.arrow_back_ios),
                        ),
                      ),
                    ),
                    leadingWidth: 100.w,
                    expandedHeight: 300.h,
                    stretch: true,
                    systemOverlayStyle: const SystemUiOverlayStyle(
                        statusBarBrightness: Brightness.dark),
                    flexibleSpace: FlexibleSpaceBar(
                      background: CachedNetworkImage(
                        imageUrl:
                            "${AppIp.ip}/api/image/?id=${context.read<CourseInfoProvider>().courseWithPriceData!.course.previewPhoto.id}",
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
                              topRight: Radius.circular(32),
                            ),
                          ),
                          child: Container(
                            height: 5.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey,
                            ),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  context
                                      .read<CourseInfoProvider>()
                                      .courseWithPriceData!
                                      .course
                                      .courseType
                                      .name,
                                  style: AppFonts.h3,
                                ),
                              ),
                              const Icon(Icons.share)
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                context
                                    .read<CourseInfoProvider>()
                                    .courseWithPriceData!
                                    .course
                                    .name,
                                style: AppFonts.h4,
                              ),
                              Text(
                                  context
                                              .read<CourseInfoProvider>()
                                              .courseWithPriceData!
                                              .price ==
                                          null
                                      ? "Narx belgilanmagan"
                                      : context
                                          .read<CourseInfoProvider>()
                                          .courseWithPriceData!
                                          .price!
                                          .toString(),
                                  style: AppFonts.body16w700
                                      .copyWith(color: Colors.green)),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Wrap(
                            children: context
                                .read<CourseInfoProvider>()
                                .courseWithPriceData!
                                .course
                                .courseType
                                .courseTags
                                .map((e) => Row(
                                      children: [
                                        ChipsWidget(
                                          text: "#${e.name}",
                                          textStyle: AppFonts.label,
                                          verticalP: 5,
                                        ),
                                      ],
                                    ))
                                .toList(),
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            context
                                .read<CourseInfoProvider>()
                                .courseWithPriceData!
                                .course
                                .courseType
                                .description,
                            style: AppFonts.body16Regular,
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            context
                                .read<CourseInfoProvider>()
                                .courseWithPriceData!
                                .course
                                .description,
                            style: AppFonts.h4w400,
                          ),
                          SizedBox(height: 100.h),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MainButton(
                onTap: () {
                  context.read<NewReceptionCubit>().state.maybeWhen(
                        orElse: () {},
                        initial: () {
                          showDialog(
                            context: context,
                            builder: (context) => const DialogWidget(),
                          );
                        },
                      );
                },
                text: "Ro'yxatdan o'tish",
                height: 62.h,
              ),
            ),
            BlocBuilder<NewReceptionCubit, NewReceptionState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  send: (newReceptionResponse) => const SuccesWidget(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
