import 'package:dataspin_academy/controller/bloc/category_filter/course_filter_by_type_bloc.dart';
import 'package:dataspin_academy/controller/bloc/check_code/check_code_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_for/course_for_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_type/course_type_cubit.dart';
import 'package:dataspin_academy/controller/bloc/create_account/check_tap/cubit/check_tap_cubit.dart';
import 'package:dataspin_academy/controller/bloc/create_account/create_account_cubit.dart';
import 'package:dataspin_academy/controller/bloc/news/cubit/news_cubit.dart';
import 'package:dataspin_academy/controller/bloc/mentors/mentors_cubit.dart';
import 'package:dataspin_academy/controller/bloc/reception/cubit/new_reception_cubit.dart';
import 'package:dataspin_academy/controller/bloc/send_code/send_code_cubit.dart';
import 'package:dataspin_academy/controller/provider/category_info_provider.dart';
import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/controller/provider/phone_number_provider.dart';
import 'package:dataspin_academy/controller/provider/profile_data_provider.dart';
import 'package:dataspin_academy/controller/provider/selectble_index_provider.dart';
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
        ChangeNotifierProvider(create: (context) => PhoneNumberProvider()),
        ChangeNotifierProvider(create: (context) => ProfileDataProvider()),
        ChangeNotifierProvider(create: (context) =>  CategoryInfoProvider()),
        ChangeNotifierProvider(create: (context) =>  SelectableIndexProvider()),
        BlocProvider(create: (context) => CheckTapCubit()),
        BlocProvider(create: (context) => CreateAccountCubit()),
        BlocProvider(create: (context) => CourseTypeCubit()),
        BlocProvider(create: (context) => CourseForCubit()),
        BlocProvider(create: (context) => CourseWithPriceCubit()),
        BlocProvider(create: (context) => NewsCubit()),
        BlocProvider(create: (context) => MentorsCubit()),
        ChangeNotifierProvider(create: (context) => CourseInfoProvider()),
        BlocProvider(create: (context) => NewReceptionCubit()),
        BlocProvider(create: (context) => CourseFilterByTypeBloc()),
        Provider(create: (context) => CourseInfoProvider()),

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
