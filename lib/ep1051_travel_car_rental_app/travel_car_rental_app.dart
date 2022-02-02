import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'src/ui/rental_main_page.dart';
import 'src/ui/start_screen.dart';

class TravelCarRentalApp extends StatelessWidget {
  TravelCarRentalApp({Key? key}) : super(key: key);
  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const StartScreen(),
    ),
    GoRoute(
      path: "/main",
      builder: (context, state) => const RentalMainPage(),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
