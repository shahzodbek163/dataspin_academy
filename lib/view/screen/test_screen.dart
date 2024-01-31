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
    return const Scaffold(
        body: Center(
      child: Text("asdasd"),
    ));
  }
}
