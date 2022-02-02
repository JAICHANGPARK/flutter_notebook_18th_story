import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'src/ui/start_screen.dart';



class TravelCarRentalApp extends StatelessWidget {
  TravelCarRentalApp({Key? key}) : super(key: key);
  final _router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: 
    )
  ]);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: StartScreen(),
    );
  }
}
