import 'package:flutter/material.dart';

import 'src/ui/start_screen.dart';


class TravelCarRentalApp extends StatelessWidget {
  const TravelCarRentalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen(),
    );
  }
}
