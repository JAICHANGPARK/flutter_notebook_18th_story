import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ep1066_task_mng_app/task_management_app.dart';

main() {
  runApp(
     const ProviderScope(
      child: TaskManagementApp(),
    ),
  );
}
