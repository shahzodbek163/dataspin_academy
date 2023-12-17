import 'package:dataspin_academy/controller/bloc/mentors/mentors_cubit.dart';
import 'package:dataspin_academy/view/screen/profile_screen/widget/courses_card.dart';
import 'package:dataspin_academy/view/screen/profile_screen/widget/mentor.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/widget/appbars/simple_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = "/profile_screen";
  final int id;

  const ProfileScreen({super.key, required this.id});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppbar.simpleAppbar(
        leadingIconPath: AppIcons.backArrow,
        title: "Tasdiqlash",
        context: context,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                              "https://71c2-92-63-204-75.ngrok-free.app/api/image/?id=${result.data[widget.id].courses[widget.id].previewPhoto.id}",
                          name:
                              "${result.data[widget.id].employee.face.firstname} ${result.data[widget.id].employee.face.lastname}",
                          information:
                              "${result.data[widget.id].courses.map((e) => e.courseType.name).join(", ")} developer",
                          numStudents: "+12 400",
                          courses:
                              "${result.data[widget.id].courses.length} ta kurslar",
                          rating:
                              "${result.data[widget.id].subMentors[widget.id].practice} yillik tajriba",
                        ),
                        SizedBox(height: 24.h),
                        const Text(
                          "About",
                          style: AppFonts.h3,
                        ),
                        SizedBox(height: 14.h),
                        Text(
                          "Congratulations! My name is Vladyslav, and I will tell and show you how to use Webflow. It's a cool tool for building fast and easy-to-scalable websites.",
                          style: AppFonts.body18Regular.copyWith(
                            color: AppColor.txtSecondColor,
                          ),
                        ),
                        SizedBox(height: 35.h),
                        const Text(
                          "Kurslar",
                          style: AppFonts.h3,
                        ),
                        SizedBox(height: 16.h),
                        SizedBox(
                          height:
                              (250 * result.data[widget.id].courses.length).h,
                          child: GridView.builder(
                            itemCount: result.data[widget.id].courses.length,
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
                                  "https://71c2-92-63-204-75.ngrok-free.app/api/image/?id=${result.data[widget.id].courses[index].courseType.photo.id}",
                              information:
                                  result.data[widget.id].courses[index].name,
                              courseName: result.data[widget.id].courses[index]
                                  .courseType.name,
                              price: "300 000",
                            ),
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
      ),
    );
  }
}
