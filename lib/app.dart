import 'package:dataspin_academy/controller/bloc/check_code/check_code_cubit.dart';
import 'package:dataspin_academy/controller/bloc/create_account/check_tap/cubit/check_tap_cubit.dart';
import 'package:dataspin_academy/controller/bloc/send_code/send_code_cubit.dart';
import 'package:dataspin_academy/controller/provider/phone_number_provider.dart';
import 'package:dataspin_academy/controller/service/navigation/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        BlocProvider(create: (context) => SendCodeCubit()),
        BlocProvider(create: (context) => CheckCodeCubit()),
        ChangeNotifierProvider(
          create: (context) => PhoneNumberProvider(),
        ),
        BlocProvider(create: (context) => CheckTapCubit()),
      ],
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: const Size(393, 852),
        builder: (context, child) => MaterialApp.router(
          title: "DataSpin Academy",
          routerConfig: router.router,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
