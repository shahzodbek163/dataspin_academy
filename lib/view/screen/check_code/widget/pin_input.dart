import 'dart:developer';

import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

class PinInput extends StatefulWidget {
  const PinInput({super.key});

  @override
  State<PinInput> createState() => _PinInputState();
}

class _PinInputState extends State<PinInput> {
  bool onComplated = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pinput(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          closeKeyboardWhenCompleted: false,
          animationCurve: Curves.easeIn,
          onCompleted: (value) {
            log("harrormforormromrormrorom    $value");
            onComplated = true;
            setState(() {});
          },
          onChanged: (value) {
            onComplated = false;
            setState(() {});
          },
          length: 5,
          cursor: null,
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
            ? Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 58,
                decoration: BoxDecoration(
                  color: const Color(0xFF292930),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Confirm",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
