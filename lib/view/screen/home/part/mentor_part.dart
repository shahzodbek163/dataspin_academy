import 'dart:math';

import 'package:dataspin_academy/controller/bloc/mentors/mentors_cubit.dart';
import 'package:dataspin_academy/controller/provider/profile_id_provider.dart';
import 'package:dataspin_academy/view/screen/home/widget/mentor_card.dart';
import 'package:dataspin_academy/view/screen/home/widget/row_text_widget.dart';
import 'package:dataspin_academy/view/screen/profile_screen/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MentorPart extends StatefulWidget {
  const MentorPart({super.key});

  @override
  State<MentorPart> createState() => _MentorPartState();
}

class _MentorPartState extends State<MentorPart> {
  @override
  void initState() {
    super.initState();
    context.read<MentorsCubit>().getMentors();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowTextWidget(leftText: "Mentorlar"),
        SizedBox(height: 18.h),
        BlocBuilder<MentorsCubit, MentorsState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              getting: () => const CircularProgressIndicator(),
              get: (result) => SizedBox(
                height: ((155 + 40) * result.data.length).h,
                child: ListView.builder(
                  itemCount: result.data.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {
                        log(context.read<ProfileIdProvider>().id);

                        context
                            .read<ProfileIdProvider>()
                            .changeId(index);
                        log(context.read<ProfileIdProvider>().id);
                        context.push(ProfileScreen.routeName);
                      },
                      child: MentorCard(
                        image:
                            "https://71c2-92-63-204-75.ngrok-free.app/api/image/?id=${result.data[index].courses[index].previewPhoto.id}",
                        name:
                            "${result.data[index].employee.face.firstname} ${result.data[index].employee.face.lastname}",
                        information:
                            "${result.data[index].courses.map((e) => e.courseType.name).join(", ")} developer",
                        numStudents: "+12 400",
                        courses:
                            "${result.data[index].courses.length} ta kurslar",
                        rating:
                            "${result.data[index].subMentors[index].practice} yillik tajriba",
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
