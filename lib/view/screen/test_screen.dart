import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  static const String routName = "/test_screen";
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 500,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 240,
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
