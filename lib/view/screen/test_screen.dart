import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  static const String routeName = "/test_screen";
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green,
          ),
          child: Column(
            children: [
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Image.network(
                    "https://images.unsplash.com/photo-1580414057403-c5f451f30e1c?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bGFtYm98ZW58MHx8MHx8fDA%3D",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 80,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
