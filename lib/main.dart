import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_notebook_18th_story/ep1070_treadmill_app/treadmill_app.dart';


main() {
  runApp(
     const ProviderScope(
      child: TreadmillApp(),
    ),
  );
}
