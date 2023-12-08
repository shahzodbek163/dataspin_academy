import 'package:dataspin_academy/controller/service/navigation/go_router.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final router = AppGoRouter();
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: "DataSpin Academy",
      routerConfig: router.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
