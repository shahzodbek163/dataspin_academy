import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';

class TextAppbar extends StatelessWidget {
  String text;
  TextAppbar({super.key, this.text = "Menu"});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppFonts.h1,
    );
  }
}
