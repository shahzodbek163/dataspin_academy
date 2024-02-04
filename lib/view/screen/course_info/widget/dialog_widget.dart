import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/controller/bloc/reception/cubit/new_reception_cubit.dart';
import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/model/reception/request/new_reception_request.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
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
  final promoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/image/dataspin.png"),
            SizedBox(height: 18.h),
            const Text("Qabulga yozilishni tasdiqlang!", style: AppFonts.h4),
            SizedBox(height: 18.h),
            SizedBox(
              width: 600.w,
              child: TextField(
                controller: textEditingController,
                maxLines: 7,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: "Izoh qoldiring...",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xFFEBEBF9),
                      width: 1.w,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xFFEBEBF9),
                      width: 1.w,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.h),
            Text(
              "Agar sizda promokod mavjud bo'lsa kiritishingiz mumkin",
              style: AppFonts.body12Regular.copyWith(
                color: AppColor.txtSecondColor,
              ),
            ),
            SizedBox(height: 10.h),
            MainTextField(
              hintText: "Promokod",
              upText: false,
              controller: promoController,
            ),
            SizedBox(height: 18.h),
            BlocBuilder<NewReceptionCubit, NewReceptionState>(
              builder: (context, state) {
                return MainButton(
                  text: "Tasdiqlash",
                  isLoading: state.maybeWhen(
                    orElse: () => false,
                    sending: () =>  true,

                  ),
                  onTap: () {
                
                    String year = DateTime.now().year.toString();
                    String month = DateTime.now().month.toString();
                    String day = DateTime.now().day.toString();
                    String hour = DateTime.now().hour.toString();
                    String minute = DateTime.now().minute.toString();
                    String second = DateTime.now().second.toString();
                    String milliSecond = DateTime.now().millisecond.toString();
                    String recNumber = day +
                        month +
                        year +
                        hour +
                        minute +
                        second +
                        milliSecond;
                    NewReceptionRequest newReceptionRequest =
                        NewReceptionRequest(
                            promoCode: promoController.text.trim().isNotEmpty
                                ? promoController.text.trim()
                                : null,
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
                        promoController.text.trim();
                        context
                            .read<CourseWithPriceCubit>()
                            .getAllCourseWithPrice();
                        context.pop();
                      }
                      else{
                        
                      }
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
