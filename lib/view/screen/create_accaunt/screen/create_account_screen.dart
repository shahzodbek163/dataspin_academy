import 'dart:developer';

import 'package:dataspin_academy/controller/bloc/create_account/create_account_cubit.dart';
import 'package:dataspin_academy/controller/bloc/create_account/empty_validation/validation_bloc.dart';
import 'package:dataspin_academy/model/create_account/request/create_account_request.dart';
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
                const Text(
                  "Bizning dasturda ko’rib turganimizdan hursandmiz. Ushbu ma’lumotlarni to’ldirish orqali siz bizning servislarimizdan to’liq foydalanish huquqiga ega bo’lasiz",
                  style: AppFonts.body18Regular,
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
                ),
                SizedBox(height: 14.h),
                MainTextField(
                  text: "Asosiy telefon raqam",
                  hintText: "+998 (91)",
                  onReq: true,
                  controller: primaryNumberController,
                  maskTextInputFormatter: InputMasks.phoneInputMask,
                  validationBloc: numberBloc,
                ),
                SizedBox(height: 14.h),
                MainTextField(
                  text: "Qo’shimcha telefon raqam",
                  hintText: "+998 (91)",
                  controller: secondaryNumberController,
                ),
                SizedBox(height: 14.h),
                MainTextField(
                  text: "Telegram username",
                  hintText: "@username",
                  controller: tgUsernameController,
                ),
                SizedBox(height: 64.h),
                MainButton(
                  text: "Tasdiqlash",
                  onTap: () {
                    if (firstnameController.text.isNotEmpty &&
                        lastnameController.text.isNotEmpty &&
                        primaryNumberController.text.isNotEmpty) {
                      final createAccountRequest = CreateAccountRequest(
                          firstname: firstnameController.text.trim(),
                          lastname: lastnameController.text.trim(),
                          tel1: primaryNumberController.text.trim(),
                          birthday: birthdayController.text.trim(),
                          middlename: middlenameController.text.trim(),
                          tel2: secondaryNumberController.text.trim(),
                          tg: tgUsernameController.text.trim());
                      createAccountCubit
                          .createAccount(createAccountRequest)
                          .then((value) {
                        if (value) {
                          print("Boshqa oyna");
                        }
                      });
                    } else {
                      print("bo'sh");
                      firstnameBloc.add(ValidationEvent.empty(
                          firstnameController.text.trim()));
                      lastnameBloc.add(ValidationEvent.empty(
                          lastnameController.text.trim()));
                      numberBloc.add(ValidationEvent.empty(
                          primaryNumberController.text.trim()));
                    }
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
