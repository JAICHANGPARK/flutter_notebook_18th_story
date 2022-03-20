import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1098_smart_home_ui/smart_home_ui_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  runApp(
    const ProviderScope(
      child: SmartHomeUiApp(),
    ),
  );
}
