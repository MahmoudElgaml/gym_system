import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_system/features/auth/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:gym_system/features/auth/presentation/screens/sign_up/sign_up_screen.dart';
import 'package:gym_system/features/home_layout/presentation/manager/home_layout_cubit.dart';

import '../../features/home_layout/presentation/views/home_layout.dart';

class AppRoute {
  static const homeLayout = '/';
  static const signInScreen = '/signInScreen';
  static const signUpScreen = '/signUpScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: homeLayout,
        builder: (context, state) => BlocProvider(
          create: (context) => HomeLayoutCubit(),
          child: const HomeLayoutPage(),
        ),
      ),
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
