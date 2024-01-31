import 'package:flutter/material.dart';

class TestData extends StatelessWidget {
  static const String routeName = "/test_screen";
  const TestData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("data")),
    );
  }
}
