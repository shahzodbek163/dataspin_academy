import 'package:dataspin_academy/controller/bloc/aboutus/cubit/aboutus_cubit.dart';
import 'package:dataspin_academy/controller/bloc/account/cubit/account_cubit.dart';
import 'package:dataspin_academy/controller/bloc/account/update/cubit/account_update_cubit.dart';
import 'package:dataspin_academy/controller/bloc/bottom_bar/bottom_bar_cubit.dart';
import 'package:dataspin_academy/controller/bloc/category_filter/course_filter_by_type_bloc.dart';
import 'package:dataspin_academy/controller/bloc/comment/cubit/comment_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_for/course_for_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_price/cubit/course_with_price_cubit.dart';
import 'package:dataspin_academy/controller/bloc/course/course_type/course_type_cubit.dart';
import 'package:dataspin_academy/controller/bloc/mentors/mentors_cubit.dart';
import 'package:dataspin_academy/controller/bloc/news/cubit/news_cubit.dart';
import 'package:dataspin_academy/controller/bloc/promocode/create_promo/create_promo_cubit.dart';
import 'package:dataspin_academy/controller/bloc/promocode/get_all_promo/get_all_promo_cubit.dart';
import 'package:dataspin_academy/controller/bloc/promocode/my_promos/get_my_promos_cubit.dart';
import 'package:dataspin_academy/controller/bloc/reception/cubit/new_reception_cubit.dart';
import 'package:dataspin_academy/controller/bloc/reception/reception_by_user/cubit/reception_by_user_cubit.dart';
import 'package:dataspin_academy/controller/provider/category_info_provider.dart';
import 'package:dataspin_academy/controller/provider/course_info_provider.dart';
import 'package:dataspin_academy/controller/provider/for_pdf_view_provider.dart';
import 'package:dataspin_academy/controller/provider/new_desc_provider.dart';
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
        ChangeNotifierProvider(create: (context) => PhoneNumberProvider()),
        ChangeNotifierProvider(create: (context) => ProfileDataProvider()),
        ChangeNotifierProvider(create: (context) => CategoryInfoProvider()),
        ChangeNotifierProvider(create: (context) => NewDescProvider()),
        BlocProvider(create: (context) => AboutUsCubit()..getAllAboutUs()),
        BlocProvider(create: (context) => CourseTypeCubit()..getCourseType()),
        BlocProvider(create: (context) => CourseForCubit()..getAllCourseFor()),
        BlocProvider(
            create: (context) =>
                CourseWithPriceCubit()..getAllCourseWithPrice()),
        BlocProvider(create: (context) => NewsCubit()..getAllNews()),
        BlocProvider(create: (context) => MentorsCubit()..getMentors()),
        ChangeNotifierProvider(create: (context) => CourseInfoProvider()),
        BlocProvider(create: (context) => NewReceptionCubit()),
        BlocProvider(create: (context) => CourseFilterByTypeBloc()),
        ChangeNotifierProvider(create: (context) => SelectableIndexProvider()),
        BlocProvider(create: (context) => BottomBarIndexCubit(0)),
        ChangeNotifierProvider(create: (context) => ForPdfViewProvider()),
        BlocProvider(create: (context) => AccountCubit()..getAccount()),
        BlocProvider(create: (context) => AccountUpdateCubit()),
        BlocProvider(create: (context) => CommentCubit()),
        BlocProvider(create: (context) => CreatePromoCubit()),
        BlocProvider(
            create: (context) => ReceptionByUserCubit()..getReceptionByUser()),
        BlocProvider(
            create: (context) => GetAllPromoCubit()..getAllPromocode()),
        BlocProvider(create: (context) => GetMyPromosCubit()..getData())
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
