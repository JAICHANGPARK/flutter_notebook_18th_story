import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1063_tutor_app/tutor_app.dart';

main() {
  runApp(
     ProviderScope(
      child: TutorApp(),
    ),
  );
}
