import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/bloc/account/cubit/account_cubit.dart';
import 'package:dataspin_academy/controller/bloc/account/update/cubit/account_update_cubit.dart';
import 'package:dataspin_academy/controller/bloc/photo_changer/photo_changer_cubit.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/controller/service/dialogs/show_top_snack_bar.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/value/input_masks.dart';
import 'package:dataspin_academy/view/value/phone_codes.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class AccountScreen extends StatefulWidget {
  static const String routeName = "/account_screen";
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final birthdayController = TextEditingController();
  final primaryNumberController = TextEditingController();
  final secondaryNumberController = TextEditingController();
  final photoChangerCubit = PhotoChangerCubit(null);

  bool isEmptyPhone = false;
  bool isValidPrimaryPhone = true;
  bool isValidSecondPhone = true;
  bool isValidBirth = true;
  bool first = false;

  @override
  void initState() {
    super.initState();
    first = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.horizontalPadding,
        ),
        child: SingleChildScrollView(
          child: BlocBuilder<AccountCubit, AccountState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                  ],
                )),
                get: (response) {
                  if (first) {
                    String year =
                        response.data.birthday.toString().substring(0, 4);
                    String month =
                        response.data.birthday.toString().substring(5, 7);
                    String day =
                        response.data.birthday.toString().substring(8, 10);

                    birthdayController.value =
                        TextEditingValue(text: "$day-$month-$year");

                    List<String> tel1 =
                        convertToFormatPhone(response.data.primaryPhone);

                    if (secondaryNumberController.text.isNotEmpty) {
                      List<String> tel2 =
                          convertToFormatPhone(response.data.secondaryPhone!);

                      secondaryNumberController.value = TextEditingValue(
                          text:
                              "${tel2[0]} (${tel2[1]}) ${tel2[2]}-${tel2[3]}-${tel2[4]}");
                    }
                    primaryNumberController.value = TextEditingValue(
                        text:
                            "${tel1[0]} (${tel1[1]}) ${tel1[2]}-${tel1[3]}-${tel1[4]}");

                    first = false;
                  }

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50.h),
                      SizedBox(
                        height: 140,
                        width: 140,
                        child: BlocBuilder<PhotoChangerCubit, XFile?>(
                          bloc: photoChangerCubit,
                          builder: (context, state) {
                            return ClipRRect(
                                borderRadius: BorderRadius.circular(70),
                                child: state != null
                                    ? Image.file(
                                        File(state.path),
                                        fit: BoxFit.cover,
                                      )
                                    : response.data.profilePhoto != null
                                        ? CachedNetworkImage(
                                            imageUrl:
                                                "${AppIp.ip}/api/image/?id=${response.data.profilePhoto!.id}",
                                            fit: BoxFit.cover,
                                          )
                                        : SvgPicture.asset(
                                            AppIcons.profile,
                                            color: Colors.black,
                                          ));
                          },
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "${response.data.firstname} ${response.data.lastname}",
                        style: AppFonts.h3,
                      ),
                      Text(
                        response.data.middlename ?? "",
                        style: AppFonts.h3,
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () async {
                          final ImagePicker imagePicker = ImagePicker();
                          XFile? xFile = await imagePicker.pickImage(
                              source: ImageSource.gallery);

                          if (xFile != null) {
                            photoChangerCubit.change(xFile);
                          }

                          setState(() {});
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
                      SizedBox(height: 35.h),
                      MainTextField(
                        text: "Tug’ilgan kuningiz",
                        hintText: "28-09-2023",
                        controller: birthdayController,
                        maskTextInputFormatter: InputMasks.birthdayInputMask,
                        keyboardType: TextInputType.number,
                        isValid: isValidBirth,
                      ),
                      SizedBox(height: 14.h),
                      MainTextField(
                        text: "Asosiy telefon raqam",
                        hintText: "+998 (91)",
                        controller: primaryNumberController,
                        maskTextInputFormatter: InputMasks.phoneInputMask,
                        keyboardType: TextInputType.phone,
                        isEmpty: isEmptyPhone,
                        isValid: isValidPrimaryPhone,
                      ),
                      SizedBox(height: 14.h),
                      MainTextField(
                        text: "Qo’shimcha telefon raqam",
                        hintText: "+998 (91)",
                        controller: secondaryNumberController,
                        keyboardType: TextInputType.phone,
                        maskTextInputFormatter: InputMasks.phoneInputMask,
                        isValid: isValidSecondPhone,
                      ),
                      SizedBox(height: 50.h),
                      BlocBuilder<AccountUpdateCubit, AccountUpdateState>(
                        builder: (context, state) {
                          return MainButton(
                            text: "Saqlash",
                            isLoading: state.maybeWhen(
                              orElse: () => false,
                              updating: () => true,
                            ),
                            onTap: () {
                              if (birthdayController.text.trim().isNotEmpty) {
                                if (birthdayController.text.trim().length !=
                                    10) {
                                  isValidBirth = false;
                                  setState(() {});
                                } else if (birthdayController.text.length ==
                                    10) {
                                  List<String> list =
                                      birthdayController.text.split("-");
                                  String day = list[0];
                                  String month = list[1];
                                  String year = list[2];

                                  int dayI = int.parse(day);
                                  int monthI = int.parse(month);
                                  int yearI = int.parse(year);

                                  if (((dayI >= 1 && dayI <= 31) &&
                                      (monthI >= 1 && monthI <= 12) &&
                                      (yearI >= 1800 &&
                                          yearI <= DateTime.now().year))) {
                                    isValidBirth = true;
                                    setState(() {});
                                  } else {
                                    isValidBirth = false;
                                    setState(() {});
                                  }
                                }
                              } else {
                                isValidBirth = true;
                                setState(() {});
                              }
                              ////////////////////////////////////////////
                              if (primaryNumberController.text.isEmpty) {
                                setState(() {
                                  isEmptyPhone = true;
                                });
                              } else {
                                setState(() {
                                  isEmptyPhone = false;
                                });
                              }
                              ////////////////////////////////////////
                              String? prPhone;
                              if (primaryNumberController.text.length >= 9) {
                                String code = primaryNumberController.text
                                    .substring(6, 8);
                                if (PhoneCode.phoneCodes.contains(code)) {
                                  if (primaryNumberController.text.length ==
                                      19) {
                                    List<String> list =
                                        forServer(primaryNumberController.text);
                                    prPhone = list[0] +
                                        list[1] +
                                        list[2] +
                                        list[3] +
                                        list[4];

                                    isValidPrimaryPhone = true;
                                    setState(() {});
                                  } else {
                                    isValidPrimaryPhone = false;
                                    setState(() {});
                                  }
                                } else {
                                  isValidPrimaryPhone = false;
                                  setState(() {});
                                }
                              } else {
                                isEmptyPhone = true;
                                setState(() {});
                              }
                              ////////////////////////////////////////
                              if (secondaryNumberController.text
                                  .trim()
                                  .isNotEmpty) {
                                print("second phonr");
                                if (secondaryNumberController.text.length >=
                                    9) {
                                  String code = secondaryNumberController.text
                                      .substring(6, 8);
                                  if (PhoneCode.phoneCodes.contains(code)) {
                                    if (secondaryNumberController.text.length ==
                                        19) {
                                      isValidSecondPhone = true;
                                      setState(() {});
                                    } else {
                                      isValidSecondPhone = false;
                                      setState(() {});
                                    }
                                  } else {
                                    isValidSecondPhone = false;
                                    setState(() {});
                                  }
                                }
                              }
                              ///////////////////////////////////

                              if (!isEmptyPhone &&
                                  isValidPrimaryPhone &&
                                  isValidSecondPhone &&
                                  isValidBirth) {
                                print("update");

                                String tel2 = "";
                                if (secondaryNumberController.text.isNotEmpty) {
                                  List<String> ls =
                                      forServer(secondaryNumberController.text);
                                  tel2 = ls[0] + ls[1] + ls[2] + ls[3] + ls[4];
                                }
                                print(
                                    "${secondaryNumberController.text} 00009");

                                context
                                    .read<AccountUpdateCubit>()
                                    .update(
                                      birthday: birthdayController.text.isEmpty
                                          ? null
                                          : birthdayController.text,
                                      tel1: prPhone,
                                      tel2:
                                          secondaryNumberController.text.isEmpty
                                              ? ""
                                              : tel2,
                                      photo: photoChangerCubit.state == null
                                          ? null
                                          : File(photoChangerCubit.state!.path),
                                    )
                                    .then((value) {
                                  if (value) {
                                    showSuccessSnackBar(
                                      "Ma'lumotlar yangilandi",
                                    );
                                  }
                                });
                              }
                            },
                          );
                        },
                      )
                    ],
                  );
                },
              );
            },
          ),
        ),
      )),
    );
  }

  List<String> convertToFormatPhone(String phone) {
    String first = phone.substring(0, 4);
    String code = phone.substring(4, 6);
    String third = phone.substring(6, 9);
    String forth = phone.substring(9, 11);
    String five = phone.substring(11, 13);
    return [first, code, third, forth, five];
  }

  List<String> forServer(String phone) {
    String first = phone.substring(0, 4);
    String second = phone.substring(6, 8);
    String third = phone.substring(10, 13);
    String fourth = phone.substring(14, 16);
    String fifth = phone.substring(17, 19);

    return [first, second, third, fourth, fifth];
  }
}
