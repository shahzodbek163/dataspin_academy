import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  static const String routeName = "/test_screen";
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        borderRadius: BorderRadius.circular(10),
        hoverColor: Colors.transparent,
        onTap: () => print("salom"),
        child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(color: Colors.transparent),
        ),
      )),
    );
  }
}
