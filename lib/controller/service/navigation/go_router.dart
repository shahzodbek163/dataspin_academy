import 'package:dataspin_academy/controller/service/navigation/navigation_service.dart';
import 'package:dataspin_academy/controller/service/transition/transitions.dart';
import 'package:dataspin_academy/view/screen/check_code/screen/check_code_srceen.dart';
<<<<<<< HEAD
import 'package:dataspin_academy/view/screen/send_code/screen/send_code_screen.dart';
=======
import 'package:dataspin_academy/view/screen/create_accaunt/screen/create_account_screen.dart';
import 'package:dataspin_academy/view/screen/phone_number/screen/phone_number_screen.dart';
>>>>>>> aff5eac9b864ee4340bb51d6fc1bde6490d55fd7
import 'package:go_router/go_router.dart';

class AppGoRouter {
  final router = GoRouter(
    navigatorKey: NavigationService.navigatorKey,
<<<<<<< HEAD
    initialLocation: SendCodeScreen.routeName,
=======
    initialLocation: CreateAccountScreen.routeName,
>>>>>>> aff5eac9b864ee4340bb51d6fc1bde6490d55fd7
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
    ],
  );
}
