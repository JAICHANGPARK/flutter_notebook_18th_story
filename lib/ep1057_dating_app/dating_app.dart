import 'package:flutter/material.dart';
import 'package:flutter_notebook_18th_story/ep1057_dating_app/src/ui/dating_app_main_page.dart';


class DatingApp extends StatelessWidget {
  const DatingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DatingAppMainPage(),
    );
  }
}
