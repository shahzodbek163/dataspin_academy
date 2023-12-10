import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainButton extends StatelessWidget {
  String text;

  MainButton({super.key, this.text = "Button"});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 58,
      decoration: BoxDecoration(
        color: const Color(0xFF292930),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: AppFonts.h4.copyWith(color: Colors.white),
      ),
    );
  }
}
