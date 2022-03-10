import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ep1088_meeting_app/meeting_app.dart';

main() {
  runApp(
    const ProviderScope(
      child: MeetingApp(),
    ),
  );
}
