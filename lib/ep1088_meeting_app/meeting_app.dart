import 'package:flutter/material.dart';

class MeetingApp extends StatelessWidget {
  const MeetingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MeetingCreatePage(),
    );
  }
}
