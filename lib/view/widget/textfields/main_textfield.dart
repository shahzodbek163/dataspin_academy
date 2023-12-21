import 'package:dataspin_academy/controller/bloc/create_account/check_tap/cubit/check_tap_cubit.dart';
import 'package:dataspin_academy/controller/bloc/create_account/empty_validation/validation_bloc.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MainTextField extends StatelessWidget {
  final bool onReq;
  final String text;
  final String hintText;
  final TextEditingController? controller;
  final MaskTextInputFormatter? maskTextInputFormatter;
  final ValidationBloc? validationBloc;
  final ValidationType? validationType;
  final TextInputType? keyboardType;

  const MainTextField(
      {super.key,
      this.onReq = false,
      required this.text,
      required this.hintText,
      this.controller,
      this.maskTextInputFormatter,
      this.validationBloc,
      this.validationType,
      this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              text,
              style: AppFonts.label,
            ),
            SizedBox(width: 5.w),
            onReq
                ? Text(
                    " *",
                    style: AppFonts.label.copyWith(
                      color: const Color(0xFFFF0000),
                    ),
                  )
                : const SizedBox(),
            validationBloc != null
                ? BlocBuilder<ValidationBloc, ValidationState>(
                    bloc: validationBloc,
                    builder: (context, state) {
                      return state.when(
                        emptyState: (isEmpty) => isEmpty
                            ? Text(
                                "(Ma'lumot kiritilishi zarur)",
                                style: AppFonts.label.copyWith(
                                    color: AppColor.errorColor, fontSize: 12),
                              )
                            : const SizedBox(),
                        formatState: (isValid) {
                          return !isValid
                              ? Text(
                                  "(Noto'g'ri ma'lumot kiritildi)",
                                  style: AppFonts.label.copyWith(
                                      color: AppColor.errorColor, fontSize: 12),
                                )
                              : const SizedBox();
                        },
                      );
                    })
                : const SizedBox()
          ],
        ),
        SizedBox(height: 6.h),
        Container(
          width: double.infinity,
          height: 48.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 1.w,
              color: const Color(0xFFEBEBF9),
            ),
          ),
          child: TextField(
            controller: controller,
            keyboardType: keyboardType,
            onChanged: (value) {
              if (validationType != null) {
                validationBloc!
                    .add(ValidationEvent.format(validationType!, value));
              }

              if (context.read<CheckTapCubit>().state) {
                if (onReq) {
                  validationBloc!.add(ValidationEvent.empty(value));
                }
              }
            },
            inputFormatters: maskTextInputFormatter == null
                ? null
                : [maskTextInputFormatter!],
            cursorColor: Colors.black,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 12.w),
              hintText: hintText,
              hintStyle:
                  AppFonts.label.copyWith(color: AppColor.txtSecondColor),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
