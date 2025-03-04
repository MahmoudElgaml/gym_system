import 'package:go_router/go_router.dart';
import 'package:gym_system/features/auth/presentation/screens/sign_in/sign_in_screen.dart';

class AppRoute {
  static const signInScreen = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: signInScreen,
        builder: (context, state) => const SignInScreen(),
      )
    ],
  );
}
