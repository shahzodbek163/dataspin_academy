import 'package:dataspin_academy/controller/service/navigation/navigation_service.dart';
import 'package:dataspin_academy/controller/service/transition/transitions.dart';
import 'package:dataspin_academy/view/screen/account/screen/account_screen.dart';
import 'package:dataspin_academy/view/screen/categories/screen/categorie_screen.dart';
import 'package:dataspin_academy/view/screen/course_info/screen/course_info_screen.dart';
import 'package:dataspin_academy/view/screen/gallery/screen/gallery_screen.dart';
import 'package:dataspin_academy/view/screen/home/screen/home_screen.dart';
import 'package:dataspin_academy/view/screen/login/screen/login_screen.dart';
import 'package:dataspin_academy/view/screen/menu/screen/menu_screen.dart';
import 'package:dataspin_academy/view/screen/pdf_view/screen/pdf_view_screen.dart';
import 'package:dataspin_academy/view/screen/profile_screen/screen/profile_screen.dart';
import 'package:dataspin_academy/view/screen/promo_code/screen/promo_code_screen.dart';
import 'package:dataspin_academy/view/screen/register/first_step/screen/first_step_screen.dart';
import 'package:dataspin_academy/view/screen/register/second_step/screen/second_step_screen.dart';
import 'package:dataspin_academy/view/screen/splash/splash_screen.dart';
import 'package:dataspin_academy/view/screen/test_screen.dart';
import 'package:go_router/go_router.dart';

class AppGoRouter {
  final router = GoRouter(
    navigatorKey: NavigationService.navigatorKey,
    initialLocation: AccountScreen.routeName,
    routes: [
      ///main

      GoRoute(
        path: LoginScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const LoginScreen(),
        ),
      ),
      GoRoute(
        path: SplashScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const SplashScreen(),
        ),
      ),

      GoRoute(
        path: FirstStepRegisterScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const FirstStepRegisterScreen(),
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
          const ProfileScreen(),
        ),
      ),
      GoRoute(
        path: CourseInfoScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const CourseInfoScreen(),
        ),
      ),
      GoRoute(
        path: CategoriesScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const CategoriesScreen(),
        ),
      ),

      GoRoute(
        path: MenuScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const MenuScreen(),
        ),
      ),
      GoRoute(
        path: GalleryScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const GalleryScreen(),
        ),
      ),
      GoRoute(
        path: PromoCodeScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const PromoCodeScreen(),
        ),
      ),
      GoRoute(
        path: PdfViewScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const PdfViewScreen(),
        ),
      ),
      GoRoute(
        path: AccountScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const AccountScreen(),
        ),
      ),
      GoRoute(
        path: SecondStepRegisterScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const SecondStepRegisterScreen(),
        ),
      ),
    ],
  );
}
