import 'package:dataspin_academy/controller/bloc/auth/login/login_cubit/login_cubit.dart';
import 'package:dataspin_academy/view/screen/main/screen/main_screen.dart';
import 'package:dataspin_academy/view/screen/register/first_step/screen/first_step_screen.dart';
import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_image.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:dataspin_academy/view/widget/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "/login_screen";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final _loginCubit = LoginCubit();

  bool isEmptyUsername = false;
  bool isEmptyPassword = false;
  bool isValidPassword = true;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    _loginCubit.close();
    super.dispose();
  }

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
                "Ro’yxatdan o’tish uchun foydalanuvchi nomi va parolni kiriting",
                style: AppFonts.body18Regular
                    .copyWith(color: AppColor.txtSecondColor),
              ),
              SizedBox(height: 33.h),
              MainTextField(
                controller: usernameController,
                hintText: "Username",
                text: "Foydalanuvchi nomi",
                keyboardType: TextInputType.emailAddress,
                isEmpty: isEmptyUsername,
              ),
              SizedBox(height: 20.h),
              MainTextField(
                controller: passwordController,
                hintText: "Password",
                text: "Foydalanuvchi paroli",
                keyboardType: TextInputType.emailAddress,
                isEmpty: isEmptyPassword,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Ro'xatdan o'tmaganmisiz ?",
                    style: AppFonts.body14Regular
                        .copyWith(color: AppColor.txtSecondColor),
                  ),
                  SizedBox(width: 6.w),
                  GestureDetector(
                    onTap: () =>
                        context.push(FirstStepRegisterScreen.routeName),
                    child: Text(
                      "Ro'xatdan o'tish",
                      style:
                          AppFonts.body12w700.copyWith(color: AppColor.primary),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 85.h),
              BlocBuilder<LoginCubit, LoginState>(
                bloc: _loginCubit,
                builder: (context, state) {
                  return MainButton(
                    text: "Kirish",
                    onTap: () {
                      isEmptyUsername = usernameController.text.isEmpty;

                      isEmptyPassword = passwordController.text.isEmpty;

                      setState(() {});
                      if (usernameController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        _loginCubit.login(
                          usernameController.text.trim(),
                          passwordController.text.trim(),
                        );
                      }
                    },
                    isLoading: state.maybeWhen(
                      orElse: () => false,
                      checking: () => true,
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
