import 'package:flutter/material.dart';

import 'src/ui/pod_main_page.dart';

class PodcastApp extends StatelessWidget {
  const PodcastApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PodMainPage(),
    );
  }
}
