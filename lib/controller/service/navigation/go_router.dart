import 'package:dataspin_academy/controller/provider/profile_id_provider.dart';
import 'package:dataspin_academy/controller/service/navigation/navigation_service.dart';
import 'package:dataspin_academy/controller/service/transition/transitions.dart';
import 'package:dataspin_academy/view/screen/check_code/screen/check_code_srceen.dart';
import 'package:dataspin_academy/view/screen/course_info/screen/course_info_screen.dart';
import 'package:dataspin_academy/view/screen/home/screen/home_screen.dart';
import 'package:dataspin_academy/view/screen/profile_screen/screen/profile_screen.dart';
import 'package:dataspin_academy/view/screen/send_code/screen/send_code_screen.dart';
import 'package:dataspin_academy/view/screen/create_accaunt/screen/create_account_screen.dart';
import 'package:dataspin_academy/view/screen/test_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppGoRouter {
  final router = GoRouter(
    navigatorKey: NavigationService.navigatorKey,
    initialLocation: HomeScreen.routeName,
    routes: [
      ///main
      GoRoute(
        path: CheckCodeScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const CheckCodeScreen(),
        ),
      ),
      GoRoute(
        path: SendCodeScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const SendCodeScreen(),
        ),
      ),
      GoRoute(
        path: CreateAccountScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const CreateAccountScreen(),
        ),
      ),
      GoRoute(
        path: HomeScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const HomeScreen(),
        ),
      ),
      GoRoute(
        path: TestScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const TestScreen(),
        ),
      ),
      GoRoute(
        path: ProfileScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          ProfileScreen(id: context.read<ProfileIdProvider>().id),
        ),
      ),
      GoRoute(
        path: CourseInfoScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const CourseInfoScreen(),
        ),
      ),
    ],
  );
}
