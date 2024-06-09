import 'package:flutter/material.dart';
import 'package:flutter_challenge/resources/light_theme.dart';
import 'package:flutter_challenge/routes/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppLightTheme.lightTheme,
      routerConfig: _appRouter.config(),
    );
  }
}
