import 'package:go_router/go_router.dart';
import 'package:gym_system/features/auth/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:gym_system/features/auth/presentation/screens/sign_up/sign_up_screen.dart';

class AppRoute {
  static const signInScreen = '/';
  static const signUpScreen = '/signUpScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: signInScreen,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: signUpScreen,
        builder: (context, state) => const SignUpScreen(),
      )
    ],
  );
}
