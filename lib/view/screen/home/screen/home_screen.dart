import 'package:cached_network_image/cached_network_image.dart';
import 'package:dataspin_academy/controller/bloc/account/cubit/account_cubit.dart';
import 'package:dataspin_academy/controller/service/api/app_ip.dart';
import 'package:dataspin_academy/view/screen/home/part/category_part.dart';
import 'package:dataspin_academy/view/screen/home/part/course_part.dart';
import 'package:dataspin_academy/view/screen/home/part/mentor_part.dart';
import 'package:dataspin_academy/view/screen/home/part/news_part.dart';
import 'package:dataspin_academy/view/value/app_fonts.dart';
import 'package:dataspin_academy/view/value/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home_screen";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<AccountCubit>().getAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSize.horizontalPadding),
            child: BlocBuilder<AccountCubit, AccountState>(
              builder: (context, state) {
                return state.when(
                  initial: () => SizedBox(),
                  getting: () => Center(
                    child: CircularProgressIndicator(),
                  ),
                  get: (response) {
                    return Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              width: 75.w,
                              height: 75.h,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Color(0xFF5956E9),
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                width: 96.w,
                                height: 96.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    image: CachedNetworkImageProvider(
                                      "${AppIp.ip}/api/image/?id=${1}",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -8.h,
                              child: Image.asset(
                                "assets/icons/verif.png",
                                width: 20.w,
                                height: 20.h,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Tursunali Xorunaliyev",
                          style: AppFonts.h4,
                        ),
                      ],
                    );
                  },
                  error: () => const Center(
                      child: Text(
                    "Xatolik",
                    style: AppFonts.h2,
                  )),
                );
              },
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppSize.horizontalPadding.w),
            child: const NewsPart(),
          ),
          SizedBox(height: 14.h),
          const CategoryPart(),
          SizedBox(height: 16.h),
          const CoursePart(),
          SizedBox(height: 16.h),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppSize.horizontalPadding.w),
            child: const MentorPart(),
          )
        ],
      ),
    );
  }
}
