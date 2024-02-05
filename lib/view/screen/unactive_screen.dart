import 'package:flutter/material.dart';

class UnactiveScreen extends StatefulWidget {
  static const String routeName = "/unactive_screen";
  const UnactiveScreen({super.key});

  @override
  State<UnactiveScreen> createState() => _UnactiveScreenState();
}

class _UnactiveScreenState extends State<UnactiveScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("Ushbu servis hali mavjud emas"),
    ));
  }
}
