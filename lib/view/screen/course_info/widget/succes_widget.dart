import 'dart:ui';

import 'package:dataspin_academy/controller/bloc/reception/cubit/new_reception_cubit.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SuccesWidget extends StatelessWidget {
  const SuccesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: Center(
        child: Container(
          width: 340.w,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.grey.withOpacity(0.5),
                  offset: const Offset(0, 0),
                  spreadRadius: 10,
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Lottie.asset(
                "assets/lottie/Animation1702976632892.json",
                repeat: false,
                height: 300.h,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Ro'yxatdan o'tganligingiz uchun tashakkur. Operator javobini kuting",
                  style: AppFonts.h4w400,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30.h),
              MaterialButton(
                onPressed: () {
                  context.read<NewReceptionCubit>().backInitialState();
                },
                color: Colors.green,
                child: Text(
                  "OK",
                  style: AppFonts.label.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
