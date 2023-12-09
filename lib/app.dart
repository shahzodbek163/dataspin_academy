import 'package:dataspin_academy/controller/service/navigation/go_router.dart';
import 'package:dataspin_academy/controller/service/navigation/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final router = AppGoRouter();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => "Salom dastur")
      ],
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(393, 852),
        builder:(context, child) => MaterialApp.router(
          title: "DataSpin Academy",
          routerConfig: router.router,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
