
import 'package:dataspin_academy/controller/bloc/create_account/create_account_cubit.dart';
import 'package:dataspin_academy/controller/bloc/create_account/register_validation/cubit/register_validation_cubit.dart';
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

  final registerValidationCubit = RegisterValidationCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<RegisterValidationCubit, RegisterValidationState>(
          bloc: registerValidationCubit,
          builder: (context, state) {
            return SingleChildScrollView(
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
                      style: AppFonts.label
                          .copyWith(color: AppColor.txtSecondColor),
                    ),
                    SizedBox(height: 18.h),
                    MainTextField(
                      text: "Ismingiz",
                      hintText: "Ismingizni kiriting",
                      onReq: true,
                      controller: firstnameController,
                      isEmpty: state.maybeWhen(
                        orElse: () => false,
                        data: (validationStateData) =>
                            validationStateData.firstnameEmpty,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    MainTextField(
                      text: "Familiyangiz",
                      hintText: "Familiyangizni kiriting",
                      onReq: true,
                      controller: lastnameController,
                      isEmpty: state.maybeWhen(
                        orElse: () => false,
                        data: (validationStateData) =>
                            validationStateData.lastnameEmpty,
                      ),
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
                      keyboardType: TextInputType.number,
                      isValid: state.maybeWhen(
                        orElse: () => true,
                        data: (validationStateData) =>
                            validationStateData.birhtdayValid,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    MainTextField(
                      text: "Asosiy telefon raqam",
                      hintText: "+998 (91)",
                      onReq: true,
                      controller: primaryNumberController,
                      maskTextInputFormatter: InputMasks.phoneInputMask,
                      keyboardType: TextInputType.phone,
                      isEmpty: state.maybeWhen(
                        orElse: () => false,
                        data: (validationStateData) =>
                            validationStateData.phone.isEmpty,
                      ),
                      isValid: state.maybeWhen(
                        orElse: () => true,
                        data: (validationStateData) =>
                            validationStateData.phone.isValid,
                      ),
                    ),
                    SizedBox(height: 14.h),
                    MainTextField(
                      text: "Qo’shimcha telefon raqam",
                      hintText: "+998 (91)",
                      controller: secondaryNumberController,
                      keyboardType: TextInputType.phone,
                      maskTextInputFormatter: InputMasks.phoneInputMask,
                      isValid: state.maybeWhen(
                        orElse: () => true,
                        data: (validationStateData) =>
                            validationStateData.additionalPhoneValid,
                      ),
                    ),
                    SizedBox(height: 50.h),
                    MainButton(
                      text: "Tasdiqlash",
                      isLoading: state.maybeWhen(
                        orElse: () => false,
                        sending: () => true,
                      ),
                      onTap: () {
                        CreateAccountRequest createAccountRequest =
                            CreateAccountRequest(
                          firstname: firstnameController.text.trim(),
                          lastname: lastnameController.text.trim(),
                          tel1: primaryNumberController.text.trim(),
                          birthday: birthdayController.text.isEmpty
                              ? null
                              : birthdayController.text.trim(),
                          middlename: birthdayController.text.isEmpty
                              ? null
                              : middlenameController.text.trim(),
                          tel2: birthdayController.text.isEmpty
                              ? null
                              : secondaryNumberController.text.trim(),
                          tg: birthdayController.text.isEmpty
                              ? null
                              : tgUsernameController.text.trim(),
                        );
                        print(primaryNumberController.text);

                        registerValidationCubit.validate(createAccountRequest);
                      },
                    ),
                    SizedBox(height: 41.h),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
