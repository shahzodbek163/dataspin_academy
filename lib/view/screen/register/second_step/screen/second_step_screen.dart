import 'dart:io';

import 'package:dataspin_academy/controller/bloc/auth/register/user_register_cubit.dart';
import 'package:dataspin_academy/controller/bloc/photo_changer/photo_changer_cubit.dart';
import 'package:dataspin_academy/controller/service/locator/service_locator.dart';
import 'package:dataspin_academy/generated/assets.dart';
import 'package:dataspin_academy/model/user_data/user_data_model.dart';
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
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _retypePasswordController = TextEditingController();

  bool _userNameEmpty = false;
  bool _passwordEmpty = false;
  bool _retypePasswordEmpty = false;
  bool _isPasswordSame = true;
  bool _isHidingPassword = false;
  bool _isHidingRetypePassword = false;

  final _userRegisterCubit = UserRegisterCubit();
  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _photoChangerCubit.close();
    _retypePasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.horizontalPadding,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: BlocBuilder<PhotoChangerCubit, XFile?>(
                    bloc: _photoChangerCubit,
                    builder: (context, state) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: state == null
                            ? SvgPicture.asset(
                                AppIcons.profile,
                                color: Colors.blueGrey,
                              )
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
                    XFile? xFile = await imagePicker.pickImage(
                        source: ImageSource.gallery);
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
                MainTextField(
                  onReq: true,
                  text: "Foydalanuvchi nomi",
                  hintText: "Username",
                  isEmpty: _userNameEmpty,
                  controller: _usernameController,
                ),
                SizedBox(height: 14.h),
                MainTextField(
                  onReq: true,
                  text: "Foydalanuvchi paroli",
                  hintText: "Password",
                  isEmpty: _passwordEmpty,
                  controller: _passwordController,
                  animateBorder: !_isPasswordSame,
                  suffix: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        _isHidingPassword = !_isHidingPassword;
                        setState(() {});
                      },
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          _isHidingPassword
                              ? Assets.iconsShowEye
                              : Assets.iconsHideEye,
                        ),
                      ),
                    ),
                  ),
                  isHiding: _isHidingPassword,
                ),
                SizedBox(height: 14.h),
                MainTextField(
                  onReq: true,
                  text: "Parolni qayta tering",
                  hintText: "Retype password",
                  isEmpty: _retypePasswordEmpty,
                  controller: _retypePasswordController,
                  animateBorder: !_isPasswordSame,
                  suffix: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        _isHidingRetypePassword = !_isHidingRetypePassword;
                        setState(() {});
                      },
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          _isHidingRetypePassword
                              ? Assets.iconsShowEye
                              : Assets.iconsHideEye,
                        ),
                      ),
                    ),
                  ),
                  isHiding: _isHidingRetypePassword,
                ),
                SizedBox(height: 80.h),
                BlocBuilder<UserRegisterCubit, UserRegisterState>(
                  bloc: _userRegisterCubit,
                  builder: (context, state) {
                    return MainButton(
                      isLoading: state.maybeWhen(
                        orElse: () => false,
                        registering: () => true,
                      ),
                      text: "Tasdiqlash",
                      onTap: () {
                        _userNameEmpty =
                            _usernameController.text.trim().isEmpty;
                        _passwordEmpty =
                            _passwordController.text.trim().isEmpty;
                        _retypePasswordEmpty =
                            _retypePasswordController.text.trim().isEmpty;
                        if (!_passwordEmpty && !_retypePasswordEmpty) {
                          _isPasswordSame = _passwordController.text.trim() ==
                              _retypePasswordController.text.trim();
                        }
                        setState(() {});
                        if (!_userNameEmpty &&
                            !_passwordEmpty &&
                            !_retypePasswordEmpty &&
                            _isPasswordSame) {
                          UserData userData = locator.get<UserData>();
                          userData.username = _usernameController.text.trim();
                          userData.password = _passwordController.text.trim();
                          userData.profilePhoto =
                              _photoChangerCubit.state != null
                                  ? File(_photoChangerCubit.state!.path)
                                  : null;
                          _userRegisterCubit.register(
                            firstname: userData.firstname,
                            lastname: userData.lastname,
                            tel1: userData.tel1,
                            username: userData.username!,
                            password: userData.password!,
                            birthday: userData.birthday,
                            middlename: userData.middlename,
                            profilePhoto: userData.profilePhoto,
                            tel2: userData.tel2,
                          );
                        }
                      },
                    );
                  },
                ),
                SizedBox(height: 24.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
