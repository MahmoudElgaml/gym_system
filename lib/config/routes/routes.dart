import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_system/features/auth/presentation/screens/sign_in/sign_in_screen.dart';
import 'package:gym_system/features/auth/presentation/screens/sign_up/sign_up_screen.dart';
import 'package:gym_system/features/home/home_screen.dart';
import 'package:gym_system/features/home_layout/manger/cubit/home_layout_cubit.dart';
import 'package:gym_system/features/home_layout/presentation/screens/home_layout_screen.dart';
import 'package:gym_system/features/more_setting/more_setting.dart';
import 'package:gym_system/features/profile/presentation/screen/profile_screen.dart';
import 'package:gym_system/features/scan_qr/scan_qr_screen.dart';

class AppRoute {
  static const signInScreen = '/';
  static const signUpScreen = '/signUpScreen';
  static const homeLayoutScreen = '/homeLayoutScreen';
  static const profileScreen = '/profileScreen';
  static const homeScreen = '/homeScreen';
  static const scanQrScreen = '/scanQrScreen';
  static const moreScreen = '/moreScreen';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: signInScreen,
        builder: (context, state) => const SignInScreen(),
      ),
      GoRoute(
        path: signUpScreen,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: homeLayoutScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => HomeLayoutCubit(),
          child: const HomeLayoutScreen(),
        ),
      ),
      GoRoute(
        path: homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: profileScreen,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: scanQrScreen,
        builder: (context, state) => const ScanQrScreen(),
      ),
      GoRoute(
        path: moreScreen,
        builder: (context, state) => const MoreSettingScreen(),
      ),
    ],
  );
}
