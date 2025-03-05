import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gym_system/config/routes/routes.dart';
import 'package:device_preview/device_preview.dart';

void main() {
 runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);
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
