import 'package:flutter/material.dart';

import 'src/smart_home_control_page.dart';


class SmartHomeUiApp extends StatelessWidget {
  const SmartHomeUiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SmartHomeControlPage(),
    );
  }
}
