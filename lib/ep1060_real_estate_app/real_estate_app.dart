import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1060_real_estate_app/src/ui/estate_splash_screen.dart';
import 'package:go_router/go_router.dart';

class RealEstateApp extends StatelessWidget {
  RealEstateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const EstateSplashScreen(),
      ),
    ],
  );
}
