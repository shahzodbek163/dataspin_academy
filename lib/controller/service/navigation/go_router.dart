import 'package:dataspin_academy/controller/service/navigation/navigation_service.dart';
import 'package:dataspin_academy/controller/service/transition/transitions.dart';
import 'package:dataspin_academy/view/screen/phone_number/screen/phone_number_screen.dart';
import 'package:dataspin_academy/view/screen/send_code/screen/send_code_screen.dart';
import 'package:go_router/go_router.dart';

class AppGoRouter {
  final router = GoRouter(
    navigatorKey: NavigationService.navigatorKey,
    initialLocation: PhoneNumberScreen.routeName,
    routes: [
      ///main
      GoRoute(
        path: SendCodeScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const SendCodeScreen(),
        ),
      ),
      GoRoute(
        path: PhoneNumberScreen.routeName,
        pageBuilder: (context, state) => slideTransitionRight(
          state,
          const PhoneNumberScreen(),
        ),
      ),
    ],
  );
}
