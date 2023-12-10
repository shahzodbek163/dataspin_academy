import 'dart:developer';

import 'package:dataspin_academy/controller/bloc/check_code/check_code_cubit.dart';
import 'package:dataspin_academy/controller/provider/phone_number_provider.dart';
import 'package:dataspin_academy/view/screen/create_accaunt/screen/create_account_screen.dart';
import 'package:dataspin_academy/view/screen/home/screen/home_screen.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/widget/buttons/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class PinInput extends StatefulWidget {
  const PinInput({super.key});

  @override
  State<PinInput> createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  bool onComplated = false;
  bool isConfirmed = true;
  final codeControll = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckCodeCubit, CheckCodeState>(
      builder: (context, state) => Column(
        children: [
          Pinput(
            forceErrorState: state.maybeWhen(
              orElse: () => false,
              error: (message) => true,
            ),
            controller: codeControll,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            closeKeyboardWhenCompleted: false,
            animationCurve: Curves.easeIn,
            length: 6,
            cursor: null,
            onCompleted: (value) {
              log("harrormforormromrormrorom    $value");
              onComplated = true;
              setState(() {});
            },
            onSubmitted: (value) {},
            errorPinTheme: PinTheme(
              width: 63,
              height: 72,
              textStyle: AppFonts.h4,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F8FD),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1,
                  color: Colors.red,
                ),
              ),
            ),
            defaultPinTheme: PinTheme(
              textStyle: AppFonts.h4,
              width: 63,
              height: 72,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F8FD),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFFEBEBF9),
                ),
              ),
            ),
            submittedPinTheme: PinTheme(
              width: 63,
              height: 72,
              textStyle: AppFonts.h4,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F8FD),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFF0B0202),
                ),
              ),
            ),
            focusedPinTheme: PinTheme(
              width: 63,
              height: 72,
              textStyle: AppFonts.h4,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F8FD),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFF0B0202),
                ),
              ),
            ),
          ),
          const Gap(28),
          onComplated
              ? MainButton(
                  isLoading: state.maybeWhen(
                    orElse: () => false,
                    checking: () => true,
                  ),
                  text: "Confirm",
                  onTap: () {
                    context
                        .read<CheckCodeCubit>()
                        .checkCode(
                          codeControll.text.trim(),
                          context.read<PhoneNumberProvider>().phoneNum,
                        )
                        .then((value) {
                      if (value == "Inactive") {
                        context.pushReplacement(CreateAccountScreen.routeName);
                      } else if (value == "Active") {
                        context.pushReplacement(HomeScreen.routeName);
                      }
                    });
                  },
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
