import 'package:dataspin_academy/controller/bloc/reception/cubit/new_reception_cubit.dart';
import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/model/reception/request/new_reception_request.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DialogWidget extends StatefulWidget {
  const DialogWidget({super.key});

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/image/Frame 10 1.png"),
          SizedBox(height: 18.h),
          const Text("Qabulga yozilishni tasdiqlang!", style: AppFonts.h4),
          SizedBox(height: 18.h),
          SizedBox(
            width: 600.w,
            child: TextField(
              controller: textEditingController,
              maxLines: 8,
              decoration: InputDecoration(
                hintText: "Izoh qoldiring...",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
            ),
          ),
          SizedBox(height: 18.h),
          MainButton(
            text: "Tasdiqlash",
            onTap: () {
              String year = DateTime.now().year.toString();
              String month = DateTime.now().month.toString();
              String day = DateTime.now().day.toString();
              String hour = DateTime.now().hour.toString();
              String minute = DateTime.now().minute.toString();
              String second = DateTime.now().second.toString();
              String milliSecond = DateTime.now().millisecond.toString();
              String recNumber =
                  day + month + year + hour + minute + second + milliSecond;
              NewReceptionRequest newReceptionRequest = NewReceptionRequest(
                  courseId: context
                      .read<CourseInfoProvider>()
                      .courseWithPriceData!
                      .course
                      .id,
                  receptionNumber: recNumber,
                  description: textEditingController.text.isNotEmpty
                      ? textEditingController.text.trim()
                      : null);

              context
                  .read<NewReceptionCubit>()
                  .newReception(newReceptionRequest)
                  .then((value) {
                if (value) {
                  textEditingController.clear();
                  context.pop();
                }
              });
            },
          )
        ],
      ),
    );
  }
}
