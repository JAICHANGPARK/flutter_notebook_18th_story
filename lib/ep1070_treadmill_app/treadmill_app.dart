import 'package:flutter/material.dart';

import 'src/ui/treadmill_home_page.dart';

class TreadmillApp extends StatelessWidget {
  const TreadmillApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TreadmillHomePage(),
    );
  }
}
