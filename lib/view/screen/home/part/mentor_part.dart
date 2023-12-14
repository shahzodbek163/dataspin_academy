import 'package:dataspin_academy/view/screen/home/widget/mentor_card.dart';
import 'package:dataspin_academy/view/screen/home/widget/row_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MentorPart extends StatelessWidget {
  const MentorPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowTextWidget(leftText: "Mentorlar"),
        SizedBox(height: 18.h),
        SizedBox(
          height: ((155 + 40) * 3).h,
          child: ListView.builder(
            itemCount: 3,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: MentorCard(
                image: "assets/image/thor.png",
                name: "Vladyslav Zhuravel",
                information: "Designer at Webflow",
                numStudents: "+12 400",
                courses: "6 courses",
                rating: "5/5 rating",
              ),
            ),
          ),
        )
      ],
    );
  }
}
