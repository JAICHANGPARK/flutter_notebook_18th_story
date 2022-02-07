import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1057_dating_app/dating_app.dart';

main() {
  runApp(
    const ProviderScope(
      child: DatingApp(),
    ),
  );
}
