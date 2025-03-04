import 'package:flutter/material.dart';
import 'package:gym_system/config/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      routerConfig: AppRoute.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
