import 'dart:developer';

import 'package:dataspin_academy/controller/bloc/create_account/check_tap/cubit/check_tap_cubit.dart';
import 'package:dataspin_academy/controller/bloc/create_account/create_account_cubit.dart';
import 'package:dataspin_academy/controller/bloc/create_account/empty_validation/validation_bloc.dart';
import 'package:dataspin_academy/controller/bloc/send_code/send_code_cubit.dart';
import 'package:dataspin_academy/controller/provider/phone_number_provider.dart';
import 'package:dataspin_academy/model/auth/sendcode/send_code_result.dart';
import 'package:dataspin_academy/view/screen/check_code/screen/check_code_srceen.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_image.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/input_masks.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SendCodeScreen extends StatefulWidget {
  static const String routeName = "/send_code_screen";

  const SendCodeScreen({super.key});

  @override
  State<SendCodeScreen> createState() => _SendCodeScreenState();
}

class _SendCodeScreenState extends State<SendCodeScreen> {
  final phoneController = TextEditingController();
  final validationBloc = ValidationBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 68.h),
                child: Image.asset(AppImage.appLogo),
              ),
              const Text(
                "Hush kelibsiz",
                style: AppFonts.h1,
              ),
              SizedBox(height: 12.h),
              Text(
                "Ro’yxatdan o’tish uchun telefon raqamingizni kiriting",
                style: AppFonts.body18Regular
                    .copyWith(color: AppColor.txtSecondColor),
              ),
              SizedBox(height: 33.h),
              MainTextField(
                controller: phoneController,
                hintText: "+998 (90) 123-45-67",
                text: "Telefon raqam",
                keyboardType: TextInputType.phone,
                maskTextInputFormatter: InputMasks.phoneInputMask,
                validationBloc: validationBloc,
                validationType: ValidationType.phone,
              ),
              SizedBox(height: 85.h),
              BlocBuilder<SendCodeCubit, SendCodeState>(
                builder: (context, state) {
                  return MainButton(
                    isLoading: state.maybeWhen(
                        orElse: () => false, sending: () => true),
                    text: "Kodni olish",
                    onTap: () {
                      context.read<CheckTapCubit>().change(true);

                      validationBloc.add(
                          ValidationEvent.empty(phoneController.text.trim()));
                      validationBloc.add(ValidationEvent.format(
                          ValidationType.phone, phoneController.text.trim()));

                      bool isValid = validationBloc.state.maybeWhen(
                        orElse: () => false,
                        formatState: (isValid) => isValid,
                      );
                      bool isEmptyNumber = validationBloc.state.maybeWhen(
                        orElse: () => false,
                        emptyState: (isEmpty) => isEmpty,
                      );

                      print("$isEmptyNumber bool");
                      print("$isValid valid");

                      if (!isEmptyNumber && isValid) {
                        context
                            .read<PhoneNumberProvider>()
                            .changePhoneNum(phoneController.text.trim());
                        context
                            .read<SendCodeCubit>()
                            .sendCode(phoneController.text.trim())
                            .then((value) {
                          if (value) {
                            context.push(CheckCodeScreen.routeName);
                          }
                        });
                      }
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
