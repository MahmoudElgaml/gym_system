
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:gym_system/features/first_screen.dart';





class AppRoute {
  static const first = '/';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: first,
        builder: (context, state) => const FirstScreen(),
      )
    
    ],
  );
}
