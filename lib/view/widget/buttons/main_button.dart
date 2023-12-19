import 'package:dataspin_academy/view/value/app_color.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final VoidCallback onTap;
  double height;

  MainButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.isLoading = false,
      this.height = 58});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(double.infinity, height)),
        backgroundColor: MaterialStateProperty.all(AppColor.primaryButtonColor),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      onPressed: onTap,
      child: !isLoading
          ? Text(
              text,
              style: AppFonts.h4.copyWith(color: Colors.white),
            )
          : const CircularProgressIndicator(),
    );
  }
}
