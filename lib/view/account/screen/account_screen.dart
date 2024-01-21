import 'package:dataspin_academy/controller/bloc/account/cubit/account_cubit.dart';
import 'package:dataspin_academy/model/enum/screen_type.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_icons.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:dataspin_academy/view/value/input_masks.dart';
import 'package:dataspin_academy/view/widget/appbars/text_appbar.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  @override
  void initState() {
    super.initState();
    context.read<AccountCubit>().getAccount();
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
                orElse: () => const Center(child: CircularProgressIndicator()),
                get: (response) {
                  birthdayController.text = response.data!.birthday.toString();
                  primaryNumberController.text = response.data!.primaryPhone;
                  secondaryNumberController.text =
                      response.data!.secondaryPhone ?? "";

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 50.h),
                      SizedBox(
                        height: 140,
                        width: 140,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Image.asset(
                              response.data!.profilePhoto ??
                                  "assets/image/patch.png",
                              fit: BoxFit.cover,
                            )),
                      ),
                      Text(
                        "${response.data!.firstname} ${response.data!.lastname}",
                        style: AppFonts.h3,
                      ),
                      Text(
                        response.data!.middlename,
                        style: AppFonts.h3,
                      ),
                      SizedBox(height: 10.h),
                      InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () {
                          print("salom");
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
                        /*  isValid: state.maybeWhen(
                            orElse: () => true,
                            data: (validationStateData) =>
                                validationStateData.birthdayValid,
                          ), */
                      ),
                      SizedBox(height: 14.h),
                      MainTextField(
                        text: "Asosiy telefon raqam",
                        hintText: "+998 (91)",
                        controller: primaryNumberController,
                        maskTextInputFormatter: InputMasks.phoneInputMask,
                        keyboardType: TextInputType.phone,
                        /*      isEmpty: state.maybeWhen(
                            orElse: () => false,
                            data: (validationStateData) =>
                                validationStateData.phone.isEmpty,
                          ), */
                        /*   isValid: state.maybeWhen(
                            orElse: () => true,
                            data: (validationStateData) =>
                                validationStateData.phone.isValid,
                          ), */
                        screenType: ScreenType.createAccount,
                      ),
                      SizedBox(height: 14.h),
                      MainTextField(
                        text: "Qo’shimcha telefon raqam",
                        hintText: "+998 (91)",
                        controller: secondaryNumberController,
                        keyboardType: TextInputType.phone,
                        maskTextInputFormatter: InputMasks.phoneInputMask,
                        /*   isValid: state.maybeWhen(
                            orElse: () => true,
                            data: (validationStateData) =>
                                validationStateData.addiPhoneValid,
                          ), */
                      ),
                      SizedBox(height: 50.h),
                      MainButton(
                        text: "Saqlash",
                        onTap: () {},
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
}
