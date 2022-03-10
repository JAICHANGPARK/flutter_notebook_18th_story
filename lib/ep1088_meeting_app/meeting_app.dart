import 'package:flutter/material.dart';

import 'src/ui/meeting_create_page.dart';

class MeetingApp extends StatelessWidget {
  const MeetingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeetingCreatePage(),
    );
  }
}
