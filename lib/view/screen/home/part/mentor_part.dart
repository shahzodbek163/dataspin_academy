import 'package:dataspin_academy/controller/bloc/mentors/mentors_cubit.dart';
import 'package:dataspin_academy/controller/provider/profile_data_provider.dart';
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
              get: (result) => ListView.builder(
                  itemCount: result.data.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    if (result.data.isNotEmpty) {
                      result.data;
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(8),
                          onTap: () {
                            context
                                .read<ProfileDataProvider>()
                                .change(result.data[index]);

                            print(
                                "${context.read<ProfileDataProvider>().mentorResultData} ioiooiioioio");
                            context.push(ProfileScreen.routeName);
                          },
                          child: MentorCard(
                            mentorResultData: result.data[index],
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  }),
            );
          },
        ),
      ],
    );
  }
}
