import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1076_calorie_tracking_app/calorie_tracking_app.dart';


main() {
  runApp(
     const ProviderScope(
      child: CalorieTrackingApp(),
    ),
  );
}
