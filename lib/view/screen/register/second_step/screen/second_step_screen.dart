import 'dart:io';

import 'package:dataspin_academy/controller/bloc/photo_changer/photo_changer_cubit.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class SecondStepRegisterScreen extends StatefulWidget {
  static const String routeName = "/second_step_register_screen";

  const SecondStepRegisterScreen({Key? key}) : super(key: key);

  @override
  State<SecondStepRegisterScreen> createState() =>
      _SecondStepRegisterScreenState();
}

class _SecondStepRegisterScreenState extends State<SecondStepRegisterScreen> {
  final _photoChangerCubit = PhotoChangerCubit(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.horizontalPadding,
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80.h),
              SizedBox(
                width: 120,
                height: 120,
                child: BlocBuilder<PhotoChangerCubit, XFile?>(
                  bloc: _photoChangerCubit,
                  builder: (context, state) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: state == null
                          ? SvgPicture.asset(AppIcons.profile)
                          : Image.file(
                              File(state.path),
                              fit: BoxFit.cover,
                            ),
                    );
                  },
                ),
              ),
              SizedBox(height: 16.h),
              InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () async {
                  final ImagePicker imagePicker = ImagePicker();
                  XFile? xFile =
                      await imagePicker.pickImage(source: ImageSource.gallery);
                  if (xFile != null) {
                    _photoChangerCubit.change(xFile);
                  }

                  setState(
                    () {},
                  );
                },
                child: Container(
                  height: 32.h,
                  width: 128.w,
                  decoration: BoxDecoration(
                    color: AppColor.iconColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(AppIcons.camera),
                      const Text(
                        "Rasm tanlash",
                        style: AppFonts.label,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              const MainTextField(
                onReq: true,
                text: "Foydalanuvchi nomi",
                hintText: "Username",
              ),
              SizedBox(height: 14.h),
              const MainTextField(
                onReq: true,
                text: "Foydalanuvchi nomi",
                hintText: "Username",
              ),
              const Spacer(),
              MainButton(
                text: "Tasdiqlash",
                onTap: () {},
              ),
              SizedBox(height: 24.h)
            ],
          ),
        ),
      ),
    );
  }
}
