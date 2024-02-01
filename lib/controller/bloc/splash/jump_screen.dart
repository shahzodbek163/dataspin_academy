import 'dart:async';

import 'package:dataspin_academy/view/screen/home/screen/home_screen.dart';
import 'package:dataspin_academy/view/screen/main/screen/main_screen.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class JumpScreen extends StatefulWidget {
  static const String routeName = "/jump_screen";
  const JumpScreen({super.key});

  @override
  State<JumpScreen> createState() => _JumpScreenState();
}

class _JumpScreenState extends State<JumpScreen> {
  @override
  void initState() {
    _splashshshsh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              textAlign: TextAlign.center,
              "Muvaffaqiyat amalga\noshirildi",
              style: AppFonts.h1.copyWith(color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }

  void _splashshshsh() {
    Timer(5.seconds, () {});
  }
}
