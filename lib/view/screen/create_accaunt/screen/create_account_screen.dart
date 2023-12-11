import 'dart:developer';

import 'package:dataspin_academy/controller/bloc/create_account/check_tap/cubit/check_tap_cubit.dart';
import 'package:dataspin_academy/controller/bloc/create_account/create_account_cubit.dart';
import 'package:dataspin_academy/controller/bloc/create_account/empty_validation/validation_bloc.dart';
import 'package:dataspin_academy/model/create_account/request/create_account_request.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/value/input_masks.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateAccountScreen extends StatefulWidget {
  static const String routeName = "/create_account_screen";

  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final createAccountCubit = CreateAccountCubit();

  final firstnameController = TextEditingController();

  final lastnameController = TextEditingController();

  final middlenameController = TextEditingController();

  final birthdayController = TextEditingController();

  final primaryNumberController = TextEditingController();

  final secondaryNumberController = TextEditingController();

  final tgUsernameController = TextEditingController();

  final firstnameBloc = ValidationBloc();
  final lastnameBloc = ValidationBloc();
  final numberBloc = ValidationBloc();
  final birthdayBloc = ValidationBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSize.horizontalPadding,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Account yaratish",
                  style: AppFonts.h1,
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Bizning dasturda ko’rib turganimizdan hursandmiz. Ushbu ma’lumotlarni to’ldirish orqali siz bizning servislarimizdan to’liq foydalanish huquqiga ega bo’lasiz",
                  style:
                      AppFonts.label.copyWith(color: AppColor.txtSecondColor),
                ),
                SizedBox(height: 18.h),
                MainTextField(
                  text: "Ismingiz",
                  hintText: "Ismingizni kiriting",
                  onReq: true,
                  controller: firstnameController,
                  validationBloc: firstnameBloc,
                ),
                SizedBox(height: 14.h),
                MainTextField(
                  text: "Familiyangiz",
                  hintText: "Familiyangizni kiriting",
                  onReq: true,
                  controller: lastnameController,
                  validationBloc: lastnameBloc,
                ),
                SizedBox(height: 14.h),
                MainTextField(
                  text: "Sharfingiz",
                  hintText: "Sharfingizni kiriting",
                  controller: middlenameController,
                ),
                SizedBox(height: 14.h),
                MainTextField(
                  text: "Tug’ilgan kuningiz",
                  hintText: "28-09-2023",
                  controller: birthdayController,
                  maskTextInputFormatter: InputMasks.birthdayInputMask,
                  validationBloc: birthdayBloc,
                  validationType: ValidationType.date,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 14.h),
                MainTextField(
                  text: "Asosiy telefon raqam",
                  hintText: "+998 (91)",
                  onReq: true,
                  controller: primaryNumberController,
                  maskTextInputFormatter: InputMasks.phoneInputMask,
                  validationBloc: numberBloc,
                  validationType: ValidationType.phone,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 14.h),
                MainTextField(
                  text: "Qo’shimcha telefon raqam",
                  hintText: "+998 (91)",
                  controller: secondaryNumberController,
                  validationType: ValidationType.phone,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 50.h),
                MainButton(
                  text: "Tasdiqlash",
                  onTap: () {
                    birthdayBloc.add(ValidationEvent.accept(
                        ValidationType.date, birthdayController.text.trim()));
                    numberBloc.add(ValidationEvent.accept(ValidationType.phone,
                        primaryNumberController.text.trim()));
                  },
                ),
                SizedBox(height: 41.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
