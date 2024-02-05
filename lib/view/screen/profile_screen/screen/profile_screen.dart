import 'package:dataspin_academy/controller/bloc/mentors/mentors_cubit.dart';
import 'package:dataspin_academy/controller/provider/for_pdf_view_provider.dart';
import 'package:dataspin_academy/controller/provider/profile_data_provider.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/view/screen/pdf_view/screen/pdf_view_screen.dart';
import 'package:dataspin_academy/view/screen/profile_screen/part/youtube_test.dart';
import 'package:dataspin_academy/view/screen/profile_screen/widget/courses_card.dart';
import 'package:dataspin_academy/view/screen/profile_screen/widget/mentor.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/widget/appbars/simple_appbar.dart';
import 'package:dataspin_academy/view/widget/docs_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = "/profile_screen";

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final mentorData = context.read<ProfileDataProvider>().mentorResultData;
    return Scaffold(
      appBar: SimpleAppbar.simpleAppbar(
        leadingIconPath: AppIcons.backArrow,
        title: "Mentor",
        context: context,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 24.h),
          child: BlocBuilder<MentorsCubit, MentorsState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                getting: () => const CircularProgressIndicator(),
                get: (result) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Mentor(
                        image:
                            "${AppIp.ip}/api/image/?id=${mentorData!.employee.photo.id}",
                        name:
                            "${mentorData.employee.face.firstname} ${mentorData.employee.face.lastname}",
                        information:
                            "${mentorData.courses.map((e) => e.courseType.name).join(", ")} developer",

                        courses: "${mentorData.courses.length} ta kurslar",
                        rating:
                            "${mentorData.employee.practice} yillik tajriba",
                        //
                        isVerified: mentorData.employee.isVerified,
                      ),
                      mentorData.cv != null
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 24.h),
                                const Text(
                                  "Men haqimda",
                                  style: AppFonts.h3,
                                ),
                                SizedBox(height: 14.h),
                                DocsCard(
                                  docName: "Rezyume",
                                  onTap: () {
                                    context
                                        .read<ForPdfViewProvider>()
                                        .change(mentorData.cv!.id);
                                    context.push(PdfViewScreen.routeName);
                                  },
                                ),
                              ],
                            )
                          : const SizedBox(),
                      SizedBox(height: 35.h),
                      const Text(
                        "Maxsus video",
                        style: AppFonts.h3,
                      ),
                      SizedBox(height: 16.h),
                      const YoutubeTest(),
                      SizedBox(height: 16.h),
                      const Text(
                        "Kurslar",
                        style: AppFonts.h3,
                      ),
                      SizedBox(height: 16.h),
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: mentorData.courses.length,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 24,
                          childAspectRatio: 0.65,
                        ),
                        itemBuilder: (context, index) => CourseCard(
                          image:
                              "${AppIp.ip}/api/image/?id=${mentorData.courses[index].courseType.photo.id}",
                          information: mentorData.courses[index].name,
                          courseName: mentorData.courses[index].courseType.name,
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
