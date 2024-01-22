import 'package:dataspin_academy/controller/service/locator/service_locator.dart';
import 'package:dataspin_academy/model/user_data/user_data_model.dart';
import 'package:dataspin_academy/view/screen/register/second_step/screen/second_step_screen.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/value/input_masks.dart';
import 'package:dataspin_academy/view/value/phone_codes.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class FirstStepRegisterScreen extends StatefulWidget {
  static const String routeName = "/create_account_screen";

  const FirstStepRegisterScreen({super.key});

  @override
  State<FirstStepRegisterScreen> createState() => _FirstStepRegisterState();
}

class _FirstStepRegisterState extends State<FirstStepRegisterScreen> {
  final firstnameController = TextEditingController();

  final lastnameController = TextEditingController();

  final middlenameController = TextEditingController();

  final birthdayController = TextEditingController();

  final primaryNumberController = TextEditingController();

  final secondaryNumberController = TextEditingController();

  final tgUsernameController = TextEditingController();

  bool fnEmpty = false;
  bool lnEmpty = false;

  bool tel1Empty = false;
  bool tel1Valid = true;

  bool tel2Valid = true;
  bool birthdayValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              SizedBox(height: 48.h),
              const Text(
                "Account yaratish",
                style: AppFonts.h1,
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Bizning dasturda ko’rib turganimizdan hursandmiz. Ushbu ma’lumotlarni to’ldirish orqali siz bizning servislarimizdan to’liq foydalanish huquqiga ega bo’lasiz",
                style: AppFonts.label.copyWith(color: AppColor.txtSecondColor),
              ),
              SizedBox(height: 18.h),
              MainTextField(
                text: "Ismingiz",
                hintText: "Ismingizni kiriting",
                onReq: true,
                controller: firstnameController,
                isEmpty: fnEmpty,
              ),
              SizedBox(height: 14.h),
              MainTextField(
                  text: "Familiyangiz",
                  hintText: "Familiyangizni kiriting",
                  onReq: true,
                  controller: lastnameController,
                  isEmpty: lnEmpty),
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
                  isValid: birthdayValid),
              SizedBox(height: 14.h),
              MainTextField(
                text: "Asosiy telefon raqam",
                hintText: "+998 (91)",
                onReq: true,
                controller: primaryNumberController,
                maskTextInputFormatter: InputMasks.phoneInputMask,
                keyboardType: TextInputType.phone,
                isEmpty: tel1Empty,
                isValid: tel1Valid,
              ),
              SizedBox(height: 14.h),
              MainTextField(
                text: "Qo’shimcha telefon raqam",
                hintText: "+998 (91)",
                controller: secondaryNumberController,
                keyboardType: TextInputType.phone,
                maskTextInputFormatter: InputMasks.phoneInputMask,
                isValid: tel2Valid,
              ),
              SizedBox(height: 50.h),
              MainButton(
                text: "Davom etish",
                isLoading: false,
                onTap: () {
                  fnEmpty = firstnameController.text.trim().isEmpty;
                  lnEmpty = lastnameController.text.trim().isEmpty;
                  if (primaryNumberController.text.isEmpty) {
                    tel1Empty = true;
                  } else {
                    tel1Empty = false;
                    tel1Valid = PhoneCode.phoneCodes.contains(
                            primaryNumberController.text
                                .trim()
                                .substring(6, 8)) &&
                        primaryNumberController.text.trim().length == 19;
                  }
                  if (secondaryNumberController.text.trim().isNotEmpty) {
                    tel2Valid = PhoneCode.phoneCodes.contains(
                            secondaryNumberController.text
                                .trim()
                                .substring(6, 8)) &&
                        secondaryNumberController.text.trim().length == 19;
                  } else {
                    tel2Valid = true;
                  }
                  if (birthdayController.text.isNotEmpty) {
                    if (birthdayController.text.trim().length != 10) {
                      birthdayValid = false;
                    } else {
                      List<String> birthdayList =
                          birthdayController.text.trim().split("-");
                      if (int.parse(birthdayList[0]) > 0 &&
                          int.parse(birthdayList[0]) < 32 &&
                          int.parse(birthdayList[1]) > 0 &&
                          int.parse(birthdayList[1]) < 13) {
                        birthdayValid = true;
                      } else {
                        birthdayValid = false;
                      }
                    }
                  } else {
                    birthdayValid = true;
                  }
                  setState(() {});
                  if (!fnEmpty &&
                      !lnEmpty &&
                      birthdayValid &&
                      !tel1Empty &&
                      tel1Valid &&
                      tel2Valid) {
                    UserData userData = locator.get<UserData>();
                    userData.firstname = firstnameController.text.trim();
                    userData.lastname = lastnameController.text.trim();
                    userData.middlename =
                        middlenameController.text.trim().isEmpty
                            ? null
                            : middlenameController.text.trim();
                    userData.birthday = birthdayController.text.trim().isEmpty
                        ? null
                        : birthdayController.text.trim();
                    userData.tel1 = primaryNumberController.text.trim();
                    userData.tel2 =
                        secondaryNumberController.text.trim().isEmpty
                            ? null
                            : secondaryNumberController.text.trim();
                    context.push(SecondStepRegisterScreen.routeName);
                  }
                },
              ),
              SizedBox(height: 41.h),
            ],
          ),
        ),
      ),
    );
  }
}
