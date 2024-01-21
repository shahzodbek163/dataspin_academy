import 'dart:async';

import 'package:dataspin_academy/controller/service/dio/secure_storage.dart';
import 'package:dataspin_academy/view/screen/home/screen/home_screen.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "/splash_screen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      checkingToken();
    });
  }

  checkingToken() async {
    if (SecureStorage().getAccess() == null) {
      context.pushReplacement(HomeScreen.routeName);
    } else {
      context.pushReplacement(HomeScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Hello world!",
          style: AppFonts.h4,
        ),
      ),
    );
  }
}
