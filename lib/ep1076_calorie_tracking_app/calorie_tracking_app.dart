import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1076_calorie_tracking_app/src/utils/calorie_app_theme.dart';

import 'src/ui/calorie_tracking_home_page.dart';


class CalorieTrackingApp extends StatelessWidget {
  const CalorieTrackingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backGroundColor,
        primaryColor: primaryColor,
        bottomAppBarColor: appBarColor
      ),
      home: CalorieTrackingHomePage(),
    );
  }
}
