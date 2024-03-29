import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/bloc/comment/cubit/comment_cubit.dart';
import 'package:dataspin_academy/controller/bloc/reception/cubit/new_reception_cubit.dart';
import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/view/screen/course_info/widget/about_course_card_widget.dart';
import 'package:dataspin_academy/view/screen/course_info/widget/comment_widget.dart';
import 'package:dataspin_academy/view/screen/course_info/widget/dialog_widget.dart';
import 'package:dataspin_academy/view/screen/course_info/widget/mentor_card_course_info_widget.dart';
import 'package:dataspin_academy/view/screen/course_info/widget/succes_widget.dart';
import 'package:dataspin_academy/view/screen/course_info/widget/three_icon_widget.dart';
import 'package:dataspin_academy/view/screen/home/widget/chips_widget.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/bottom_sheet/app_bottom_sheet.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class CourseInfoScreen extends StatefulWidget {
  static const String routeName = "/course_info_screen";
  const CourseInfoScreen({super.key});

  @override
  State<CourseInfoScreen> createState() => _CourseInfoScreenState();
}

class _CourseInfoScreenState extends State<CourseInfoScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<CommentCubit>().getComment(
        context.read<CourseInfoProvider>().courseWithPriceData!.course.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                            "${AppIp.ip}/api/image/?id=${context.read<CourseInfoProvider>().courseWithPriceData!.course.courseType.photo.id}",
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
                          height: 50,
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
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 100,
                      ),
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
                                  style: AppFonts.body16Regular
                                      .copyWith(color: AppColor.txtSecondColor),
                                ),
                              ),
                              InkWell(
                                  onTap: () => launchUrl(
                                      mode: LaunchMode.externalApplication,
                                      Uri(
                                          scheme: "https",
                                          path: "//t.me/ITQuva_Rasmiy_Bot")),
                                  borderRadius: BorderRadius.circular(30),
                                  child: const Icon(Icons.share))
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            context
                                .read<CourseInfoProvider>()
                                .courseWithPriceData!
                                .course
                                .name,
                            style: AppFonts.h1,
                          ),
                          SizedBox(height: 10.h),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                                context
                                            .read<CourseInfoProvider>()
                                            .courseWithPriceData!
                                            .price ==
                                        null
                                    ? "Narx belgilanmagan"
                                    : "${context.read<CourseInfoProvider>().courseWithPriceData!.price!} so'm",
                                style: AppFonts.body16w700
                                    .copyWith(color: Colors.white)),
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            height: 48,
                            child: MainButton(
                              text: "Ro'yxatdan o'tish",
                              onTap: () {
                                context
                                    .read<NewReceptionCubit>()
                                    .state
                                    .maybeWhen(
                                      orElse: () {},
                                      initial: () {
                                        showSlidingBottomSheet(
                                          context,
                                          builder: (context) =>
                                              AppBottomSheet.sheetDialog(
                                            content: const DialogWidget(),
                                            snappings: [0.8],
                                          ),
                                        );
                                      },
                                    );
                              },
                            ),
                          ).animate(
                            effects: [
                              MoveEffect(
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: 500.ms,
                                begin: const Offset(400, 0),
                                end: const Offset(0, 0),
                              )
                            ],
                            delay: 1000.ms,
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            context
                                .read<CourseInfoProvider>()
                                .courseWithPriceData!
                                .course
                                .description,
                            style: AppFonts.body16Regular.copyWith(
                              color: AppColor.txtSecondColor,
                            ),
                          ),
                          SizedBox(height: 24.h),
                          const ThreeIconWidget(),
                          SizedBox(height: 24.h),
                          const MentorCardCourseInfoWidget(),
                          SizedBox(
                              height: context
                                          .read<CourseInfoProvider>()
                                          .courseWithPriceData!
                                          .mentor
                                          .employee
                                          .about ==
                                      null
                                  ? 0
                                  : 28.h),
                          const Text(
                            "Kurs haqida",
                            style: AppFonts.h2w700,
                          ),
                          SizedBox(height: 10.h),
                          ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: context
                                .read<CourseInfoProvider>()
                                .courseWithPriceData!
                                .course
                                .courseAboutParts
                                .length,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) =>
                                AboutCourseCardWidget(
                              iconPath:
                                  "${AppIp.ip}/api/image/?id=${context.read<CourseInfoProvider>().courseWithPriceData!.course.courseAboutParts[index].icon!.id}",
                              title: context
                                  .read<CourseInfoProvider>()
                                  .courseWithPriceData!
                                  .course
                                  .courseAboutParts[index]
                                  .name,
                              text: context
                                      .read<CourseInfoProvider>()
                                      .courseWithPriceData!
                                      .course
                                      .courseAboutParts[index]
                                      .description ??
                                  "Ma'lumot yo'q",
                            ),
                          ),
                          SizedBox(height: 20.h),
                          const Text(
                            "Ushbu kursda o'rganasiz:",
                            style: AppFonts.h2w600,
                          ),
                          SizedBox(height: 18.h),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: context
                                .read<CourseInfoProvider>()
                                .courseWithPriceData!
                                .course
                                .courseType
                                .courseTags
                                .map((e) => Row(
                                      mainAxisSize: MainAxisSize.min,
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
                          SizedBox(height: 28.h),
                          CommentWidget(
                            courseId: context
                                .read<CourseInfoProvider>()
                                .courseWithPriceData!
                                .course
                                .id,
                          )
                        ],
                      ),
                    ),
                  )
                ],
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
