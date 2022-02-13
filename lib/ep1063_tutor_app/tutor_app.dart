import 'package:flutter/material.dart';

import 'src/ui/tutor_login_page.dart';


class TutorApp extends StatelessWidget {
  const TutorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: TutorLoginPage(),
    );
  }
}
