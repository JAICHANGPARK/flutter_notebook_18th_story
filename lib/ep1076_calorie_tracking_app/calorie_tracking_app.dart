import 'package:flutter/material.dart';

import 'src/ui/calorie_tracking_home_page.dart';


class CalorieTrackingApp extends StatelessWidget {
  const CalorieTrackingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalorieTrackingHomePage(),
    );
  }
}
